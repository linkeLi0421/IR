; ModuleID = '/llk/IR/drivers/usb/storage/scsiglue.c_pt.bc'
source_filename = "../drivers/usb/storage/scsiglue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_host_template_init:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_host_template_init\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_host_template_init:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_sense_invalidCDB:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_sense_invalidCDB\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_sense_invalidCDB:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.us_unusual_dev = type { ptr, ptr, i8, i8, ptr }

@usb_stor_host_template = internal unnamed_addr constant %struct.scsi_host_template { i32 0, ptr @queuecommand, ptr null, ptr null, ptr @.str, ptr @host_info, ptr null, ptr null, ptr null, ptr @command_abort, ptr @device_reset, ptr null, ptr @bus_reset, ptr null, ptr @slave_alloc, ptr @slave_configure, ptr null, ptr @target_alloc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @show_info, ptr @write_info, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 2048, i16 0, i32 240, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 24, i32 0, ptr null, ptr @usb_sdev_groups, i64 0, ptr null, i32 0 }, align 8
@__kstrtab_usb_stor_host_template_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_host_template_init = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_host_template_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_host_template_init to i32), ptr @__kstrtab_usb_stor_host_template_init, ptr @__kstrtabns_usb_stor_host_template_init }, section "___ksymtab_gpl+usb_stor_host_template_init", align 4
@usb_stor_sense_invalidCDB = dso_local global [18 x i8] c"p\00\05\00\00\00\00\0A\00\00\00\00$\00\00\00\00\00", align 1
@__kstrtab_usb_stor_sense_invalidCDB = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_sense_invalidCDB = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_sense_invalidCDB = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_sense_invalidCDB to i32), ptr @__kstrtab_usb_stor_sense_invalidCDB, ptr @__kstrtabns_usb_stor_sense_invalidCDB }, section "___ksymtab_gpl+usb_stor_sense_invalidCDB", align 4
@.str = private unnamed_addr constant [12 x i8] c"usb-storage\00", align 1
@usb_sdev_groups = internal global [2 x ptr] [ptr @usb_sdev_group, ptr null], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error in %s: us->srb = %p\0A\00", align 1
@__func__.queuecommand_lck = private unnamed_addr constant [17 x i8] c"queuecommand_lck\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"   Host scsi%d: usb-storage\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"       Vendor: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"      Product: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Serial Number: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"     Protocol: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"    Transport: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"       Quirks:\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" SINGLE_LUN\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c" NEED_OVERRIDE\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c" SCM_MULT_TARG\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c" FIX_INQUIRY\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c" FIX_CAPACITY\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c" IGNORE_RESIDUE\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" BULK32\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c" NOT_LOCKABLE\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" GO_SLOW\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c" NO_WP_DETECT\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c" MAX_SECTORS_64\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c" IGNORE_DEVICE\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c" CAPACITY_HEURISTICS\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c" MAX_SECTORS_MIN\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c" BULK_IGNORE_TAG\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" SANE_SENSE\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c" CAPACITY_OK\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c" BAD_SENSE\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c" NO_READ_DISC_INFO\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c" NO_READ_CAPACITY_16\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c" INITIAL_READ10\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c" WRITE_CACHE\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c" NEEDS_CAP16\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c" IGNORE_UAS\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" BROKEN_FUA\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c" NO_ATA_1X\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c" NO_REPORT_OPCODES\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c" MAX_SECTORS_240\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c" NO_REPORT_LUNS\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c" ALWAYS_SYNC\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c" NO_SAME\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c" SENSE_AFTER_SYNC\00", align 1
@usb_sdev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usb_sdev_attrs, ptr null }, align 4
@usb_sdev_attrs = internal global [2 x ptr] [ptr @dev_attr_max_sectors, ptr null], align 4
@dev_attr_max_sectors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420 }, ptr @max_sectors_show, ptr @max_sectors_store }, align 4
@.str.43 = private unnamed_addr constant [12 x i8] c"max_sectors\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_usb_stor_host_template_init, ptr @__ksymtab_usb_stor_sense_invalidCDB], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_report_device_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -1312
  tail call void @scsi_report_device_reset(ptr noundef %2, i32 noundef 0, i32 noundef 0) #10
  %3 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -1076
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %13, %11 ], [ 1, %7 ]
  tail call void @scsi_report_device_reset(ptr noundef %2, i32 noundef 0, i32 noundef %12) #10
  %13 = add nuw i32 %12, 1
  %14 = load i32, ptr %8, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %11, label %16

16:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_device_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_report_bus_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -1312
  %3 = getelementptr i8, ptr %0, i32 -1284
  %4 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #10
  tail call void @scsi_report_bus_reset(ptr noundef %2, i32 noundef 0) #10
  %5 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %6 = load i16, ptr %5, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_report_bus_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @usb_stor_host_template_init(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #3 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) @usb_stor_host_template, i32 208, i1 false)
  %4 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 4
  store ptr %1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 32
  store ptr %1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 3
  store ptr %2, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @queuecommand(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 1, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.queuecommand_lck, ptr noundef nonnull %10) #11
  br label %38

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 1, i32 5, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 65536, ptr %22, align 4
  tail call void @scsi_done(ptr noundef %1) #10
  br label %38

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 1, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 33554432
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 1
  switch i8 %31, label %36 [
    i8 -95, label %32
    i8 -123, label %32
  ]

32:                                               ; preds = %28, %28
  %33 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %34 = load ptr, ptr %33, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %34, ptr noundef nonnull align 1 dereferenceable(18) @usb_stor_sense_invalidCDB, i32 18, i1 false) #10
  %35 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 2, ptr %35, align 4
  tail call void @scsi_done(ptr noundef %1) #10
  br label %38

36:                                               ; preds = %28, %23
  store ptr %1, ptr %9, align 4
  %37 = getelementptr inbounds %struct.Scsi_Host, ptr %8, i32 1, i32 13, i32 14
  tail call void @complete(ptr noundef %37) #10
  br label %38

38:                                               ; preds = %36, %32, %21, %12
  %39 = phi i32 [ 4181, %12 ], [ 0, %21 ], [ 0, %32 ], [ 0, %36 ]
  %40 = load ptr, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %5) #10
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @host_info(ptr noundef readnone %0) #5 {
  %2 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 1, i32 13, i32 0, i32 0, i32 1
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @command_abort(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %26

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 5, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %16) #10
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %16) #10
  tail call void @usb_stor_stop_transport(ptr noundef %5) #10
  br label %21

21:                                               ; preds = %20, %15
  %22 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 16
  tail call void @wait_for_completion(ptr noundef %25) #10
  br label %26

26:                                               ; preds = %21, %11
  %27 = phi i32 [ 8195, %11 ], [ 8194, %21 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @device_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 1, i32 10, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %5) #10
  tail call void @mutex_unlock(ptr noundef %5) #10
  %9 = icmp slt i32 %8, 0
  %10 = select i1 %9, i32 8195, i32 8194
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bus_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  %6 = tail call i32 @usb_stor_port_reset(ptr noundef %5) #10
  %7 = icmp slt i32 %6, 0
  %8 = select i1 %7, i32 8195, i32 8194
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slave_alloc(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 27
  store i8 36, ptr %4, align 4
  %5 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @blk_queue_update_dma_alignment(ptr noundef %6, i32 noundef 511) #10
  %7 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 15
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 80
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 16
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 39
  %16 = load i64, ptr %15, align 8
  %17 = or i64 %16, 2
  store i64 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %14, %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @slave_configure(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 9216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = and i32 %11, 8192
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 64, i32 8
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.request_queue, ptr %19, i32 0, i32 32, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %17
  br i1 %22, label %23, label %38

23:                                               ; preds = %14
  tail call void @blk_queue_max_hw_sectors(ptr noundef %19, i32 noundef %17) #10
  br label %38

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 22
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %30, i32 noundef 8388607) #10
  br label %38

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = icmp ugt i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %37, i32 noundef 2048) #10
  br label %38

38:                                               ; preds = %35, %31, %28, %23, %14
  %39 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 32, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @dma_max_mapping_size(ptr noundef %9) #10
  %44 = lshr i32 %43, 9
  %45 = tail call i32 @llvm.umin.i32(i32 %42, i32 %44)
  tail call void @blk_queue_max_hw_sectors(ptr noundef %40, i32 noundef %45) #10
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 12
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, ptr %48, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.hc_driver, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.usb_hcd, ptr %48, i32 0, i32 28
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %38
  %60 = load ptr, ptr %39, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %60, i32 noundef 1) #10
  br label %61

61:                                               ; preds = %59, %55
  %62 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 22
  %63 = load i8, ptr %62, align 4
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %174

65:                                               ; preds = %61
  %66 = load ptr, ptr %4, align 4
  %67 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 16, i32 7
  %68 = load i16, ptr %67, align 8
  switch i16 %68, label %75 [
    i16 1057, label %69
    i16 1200, label %69
    i16 2583, label %69
    i16 8888, label %69
  ]

69:                                               ; preds = %65, %65, %65, %65
  %70 = load i32, ptr %10, align 4
  %71 = and i32 %70, 65552
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = or i32 %70, 4096
  store i32 %74, ptr %10, align 4
  br label %75

75:                                               ; preds = %73, %69, %65
  %76 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 9
  %77 = load i8, ptr %76, align 4
  switch i8 %77, label %78 [
    i8 6, label %82
    i8 -15, label %82
  ]

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %80 = load i64, ptr %79, align 4
  %81 = or i64 %80, 65536
  store i64 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %78, %75, %75
  %83 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %84 = load i64, ptr %83, align 4
  %85 = or i64 %84, 33554432
  store i64 %85, ptr %83, align 4
  %86 = load i32, ptr %10, align 4
  %87 = and i32 %86, 512
  %88 = icmp eq i32 %87, 0
  %89 = or i64 %84, 37748736
  %90 = select i1 %88, i64 %85, i64 %89
  %91 = trunc i64 %90 to i32
  %92 = lshr i32 %91, 1
  %93 = and i32 %92, 8388608
  %94 = xor i32 %93, 8388608
  %95 = zext i32 %94 to i64
  %96 = and i64 %90, -11272193
  %97 = or i64 %96, %95
  %98 = or i64 %97, 2883584
  store i64 %98, ptr %83, align 4
  %99 = load i32, ptr %10, align 4
  %100 = and i32 %99, 16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %82
  %103 = or i64 %97, 4297850880
  store i64 %103, ptr %83, align 4
  %104 = load i32, ptr %10, align 4
  br label %105

105:                                              ; preds = %102, %82
  %106 = phi i64 [ %103, %102 ], [ %98, %82 ]
  %107 = phi i32 [ %104, %102 ], [ %99, %82 ]
  %108 = and i32 %107, 4096
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = or i64 %106, 8589934592
  store i64 %111, ptr %83, align 4
  %112 = load i32, ptr %10, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = phi i64 [ %111, %110 ], [ %106, %105 ]
  %115 = phi i32 [ %112, %110 ], [ %107, %105 ]
  %116 = and i32 %115, 524288
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = or i64 %114, 137438953472
  store i64 %119, ptr %83, align 4
  %120 = load i32, ptr %10, align 4
  br label %121

121:                                              ; preds = %118, %113
  %122 = phi i64 [ %119, %118 ], [ %114, %113 ]
  %123 = phi i32 [ %120, %118 ], [ %115, %113 ]
  %124 = and i32 %123, 4194304
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = or i64 %122, 274877906944
  store i64 %127, ptr %83, align 4
  br label %128

128:                                              ; preds = %126, %121
  %129 = phi i64 [ %127, %126 ], [ %122, %121 ]
  %130 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 23
  %131 = load i8, ptr %130, align 1
  %132 = icmp ugt i8 %131, 5
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i32, ptr %10, align 4
  %135 = and i32 %134, 131072
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = or i32 %134, 32768
  store i32 %138, ptr %10, align 4
  %139 = load i64, ptr %83, align 4
  br label %140

140:                                              ; preds = %137, %133, %128
  %141 = phi i64 [ %139, %137 ], [ %129, %133 ], [ %129, %128 ]
  %142 = or i64 %141, 51673825280
  store i64 %142, ptr %83, align 4
  %143 = load i32, ptr %10, align 4
  %144 = and i32 %143, 65556
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 15
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 80
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 1, i32 37, i32 2
  store i32 1, ptr %151, align 4
  br label %152

152:                                              ; preds = %150, %146, %140
  %153 = and i32 %143, 2097152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = load i64, ptr %83, align 4
  %157 = or i64 %156, 2199023255552
  store i64 %157, ptr %83, align 4
  %158 = load i32, ptr %10, align 4
  br label %159

159:                                              ; preds = %155, %152
  %160 = phi i32 [ %158, %155 ], [ %143, %152 ]
  %161 = and i32 %160, 16777216
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = load i64, ptr %83, align 4
  %165 = or i64 %164, 8796093022208
  store i64 %165, ptr %83, align 4
  %166 = load i32, ptr %10, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = phi i32 [ %166, %163 ], [ %160, %159 ]
  %169 = and i32 %168, 536870912
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %183, label %171

171:                                              ; preds = %167
  %172 = load i64, ptr %83, align 4
  %173 = or i64 %172, 2199029547008
  store i64 %173, ptr %83, align 4
  br label %183

174:                                              ; preds = %61
  %175 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %176 = load i64, ptr %175, align 4
  %177 = or i64 %176, 65536
  store i64 %177, ptr %175, align 4
  %178 = load i32, ptr %10, align 4
  %179 = and i32 %178, 262144
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %174
  %182 = or i64 %176, 68719542272
  store i64 %182, ptr %175, align 4
  br label %183

183:                                              ; preds = %181, %174, %171, %167
  %184 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 15
  %185 = load i8, ptr %184, align 1
  %186 = icmp ult i8 %185, 2
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 23
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.us_data, ptr %3, i32 0, i32 16
  store i8 0, ptr %192, align 2
  br label %193

193:                                              ; preds = %191, %187, %183
  %194 = load i32, ptr %10, align 4
  %195 = and i32 %194, 128
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %199 = load i64, ptr %198, align 4
  %200 = and i64 %199, -9
  store i64 %200, ptr %198, align 4
  br label %201

201:                                              ; preds = %197, %193
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @target_alloc(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %6 = tail call i32 @scsi_is_host_device(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %4

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %5, i32 -360
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ null, %8 ]
  %16 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 7
  %17 = load i8, ptr %16, align 4
  %18 = or i8 %17, 8
  store i8 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 1, i32 9
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = or i8 %17, 12
  store i8 %23, ptr %16, align 4
  br label %24

24:                                               ; preds = %22, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_info(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %4 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %4) #10
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 32
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.3, ptr %13
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi ptr [ %8, %2 ], [ %15, %10 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %17) #10
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 31
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.us_unusual_dev, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.3, ptr %26
  br label %29

29:                                               ; preds = %22, %16
  %30 = phi ptr [ %20, %16 ], [ %28, %22 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %30) #10
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 33
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.6, ptr %33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %35) #10
  %36 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 7, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 7
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %39) #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10) #10
  %40 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  %45 = load i32, ptr %40, align 4
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi i32 [ %45, %44 ], [ %41, %29 ]
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  %51 = load i32, ptr %40, align 4
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ %47, %46 ]
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  %57 = load i32, ptr %40, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %57, %56 ], [ %53, %52 ]
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14) #10
  %63 = load i32, ptr %40, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %63, %62 ], [ %59, %58 ]
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  %69 = load i32, ptr %40, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = phi i32 [ %69, %68 ], [ %65, %64 ]
  %72 = and i32 %71, 32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  %75 = load i32, ptr %40, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = phi i32 [ %75, %74 ], [ %71, %70 ]
  %78 = and i32 %77, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  %81 = load i32, ptr %40, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i32 [ %81, %80 ], [ %77, %76 ]
  %84 = and i32 %83, 128
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  %87 = load i32, ptr %40, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i32 [ %87, %86 ], [ %83, %82 ]
  %90 = and i32 %89, 256
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19) #10
  %93 = load i32, ptr %40, align 4
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i32 [ %93, %92 ], [ %89, %88 ]
  %96 = and i32 %95, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.20) #10
  %99 = load i32, ptr %40, align 4
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i32 [ %99, %98 ], [ %95, %94 ]
  %102 = and i32 %101, 1024
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21) #10
  %105 = load i32, ptr %40, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = phi i32 [ %105, %104 ], [ %101, %100 ]
  %108 = and i32 %107, 2048
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22) #10
  %111 = load i32, ptr %40, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i32 [ %111, %110 ], [ %107, %106 ]
  %114 = and i32 %113, 4096
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23) #10
  %117 = load i32, ptr %40, align 4
  br label %118

118:                                              ; preds = %116, %112
  %119 = phi i32 [ %117, %116 ], [ %113, %112 ]
  %120 = and i32 %119, 8192
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24) #10
  %123 = load i32, ptr %40, align 4
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi i32 [ %123, %122 ], [ %119, %118 ]
  %126 = and i32 %125, 16384
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25) #10
  %129 = load i32, ptr %40, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi i32 [ %129, %128 ], [ %125, %124 ]
  %132 = and i32 %131, 32768
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26) #10
  %135 = load i32, ptr %40, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi i32 [ %135, %134 ], [ %131, %130 ]
  %138 = and i32 %137, 65536
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27) #10
  %141 = load i32, ptr %40, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi i32 [ %141, %140 ], [ %137, %136 ]
  %144 = and i32 %143, 131072
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %142
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28) #10
  %147 = load i32, ptr %40, align 4
  br label %148

148:                                              ; preds = %146, %142
  %149 = phi i32 [ %147, %146 ], [ %143, %142 ]
  %150 = and i32 %149, 262144
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29) #10
  %153 = load i32, ptr %40, align 4
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i32 [ %153, %152 ], [ %149, %148 ]
  %156 = and i32 %155, 524288
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30) #10
  %159 = load i32, ptr %40, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = phi i32 [ %159, %158 ], [ %155, %154 ]
  %162 = and i32 %161, 1048576
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31) #10
  %165 = load i32, ptr %40, align 4
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi i32 [ %165, %164 ], [ %161, %160 ]
  %168 = and i32 %167, 2097152
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32) #10
  %171 = load i32, ptr %40, align 4
  br label %172

172:                                              ; preds = %170, %166
  %173 = phi i32 [ %171, %170 ], [ %167, %166 ]
  %174 = and i32 %173, 4194304
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %172
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33) #10
  %177 = load i32, ptr %40, align 4
  br label %178

178:                                              ; preds = %176, %172
  %179 = phi i32 [ %177, %176 ], [ %173, %172 ]
  %180 = and i32 %179, 8388608
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34) #10
  %183 = load i32, ptr %40, align 4
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi i32 [ %183, %182 ], [ %179, %178 ]
  %186 = and i32 %185, 16777216
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35) #10
  %189 = load i32, ptr %40, align 4
  br label %190

190:                                              ; preds = %188, %184
  %191 = phi i32 [ %189, %188 ], [ %185, %184 ]
  %192 = and i32 %191, 33554432
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36) #10
  %195 = load i32, ptr %40, align 4
  br label %196

196:                                              ; preds = %194, %190
  %197 = phi i32 [ %195, %194 ], [ %191, %190 ]
  %198 = and i32 %197, 67108864
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37) #10
  %201 = load i32, ptr %40, align 4
  br label %202

202:                                              ; preds = %200, %196
  %203 = phi i32 [ %201, %200 ], [ %197, %196 ]
  %204 = and i32 %203, 134217728
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38) #10
  %207 = load i32, ptr %40, align 4
  br label %208

208:                                              ; preds = %206, %202
  %209 = phi i32 [ %207, %206 ], [ %203, %202 ]
  %210 = and i32 %209, 268435456
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39) #10
  %213 = load i32, ptr %40, align 4
  br label %214

214:                                              ; preds = %212, %208
  %215 = phi i32 [ %213, %212 ], [ %209, %208 ]
  %216 = and i32 %215, 536870912
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40) #10
  %219 = load i32, ptr %40, align 4
  br label %220

220:                                              ; preds = %218, %214
  %221 = phi i32 [ %219, %218 ], [ %215, %214 ]
  %222 = and i32 %221, 1073741824
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41) #10
  %225 = load i32, ptr %40, align 4
  br label %226

226:                                              ; preds = %224, %220
  %227 = phi i32 [ %225, %224 ], [ %221, %220 ]
  %228 = icmp sgt i32 %227, -1
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42) #10
  br label %230

230:                                              ; preds = %229, %226
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @write_info(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2) #5 {
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_stop_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_port_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_update_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_sectors_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr i8, ptr %0, i32 -260
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 32, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.44, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_sectors_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2, !annotation !13
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull %5)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -260
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %5, align 2
  %12 = zext i16 %11 to i32
  call void @blk_queue_max_hw_sectors(ptr noundef %10, i32 noundef %12) #10
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %3, %8 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2149223193}
!9 = !{i64 2149219017}
!10 = !{i64 2149219092, i64 2149219119, i64 2149219166, i64 2149219188, i64 2149219216, i64 2149219236}
!11 = !{i64 603972}
!12 = !{i64 2149247337}
!13 = !{!"auto-init"}
