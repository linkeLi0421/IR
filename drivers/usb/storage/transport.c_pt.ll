; ModuleID = '/llk/IR/drivers/usb/storage/transport.c_pt.bc'
source_filename = "../drivers/usb/storage/transport.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_control_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_control_msg\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_control_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_clear_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_clear_halt\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_clear_halt:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_ctrl_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_ctrl_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_ctrl_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_bulk_transfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_bulk_transfer_buf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_bulk_transfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_bulk_srb:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_bulk_srb\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_bulk_srb:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_bulk_transfer_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_bulk_transfer_sg\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_bulk_transfer_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_CB_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_CB_transport\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_CB_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_Bulk_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_Bulk_transport\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_Bulk_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_CB_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_CB_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_CB_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_Bulk_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_Bulk_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_Bulk_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_eh_save = type { i32, i32, i32, i32, i32, i8, i8, ptr, %struct.scsi_data_buffer, [16 x i8], %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_disk = type <{ ptr, ptr, %struct.device, ptr, ptr, %struct.atomic_t, [4 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i24, [2 x i8] }>
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.bulk_cb_wrap = type { i32, i32, i32, i8, i8, i8, [16 x i8] }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_usb_stor_control_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_control_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_control_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_control_msg to i32), ptr @__kstrtab_usb_stor_control_msg, ptr @__kstrtabns_usb_stor_control_msg }, section "___ksymtab_gpl+usb_stor_control_msg", align 4
@__kstrtab_usb_stor_clear_halt = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_clear_halt = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_clear_halt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_clear_halt to i32), ptr @__kstrtab_usb_stor_clear_halt, ptr @__kstrtabns_usb_stor_clear_halt }, section "___ksymtab_gpl+usb_stor_clear_halt", align 4
@__kstrtab_usb_stor_ctrl_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_ctrl_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_ctrl_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_ctrl_transfer to i32), ptr @__kstrtab_usb_stor_ctrl_transfer, ptr @__kstrtabns_usb_stor_ctrl_transfer }, section "___ksymtab_gpl+usb_stor_ctrl_transfer", align 4
@__kstrtab_usb_stor_bulk_transfer_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_bulk_transfer_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_bulk_transfer_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_bulk_transfer_buf to i32), ptr @__kstrtab_usb_stor_bulk_transfer_buf, ptr @__kstrtabns_usb_stor_bulk_transfer_buf }, section "___ksymtab_gpl+usb_stor_bulk_transfer_buf", align 4
@__kstrtab_usb_stor_bulk_srb = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_bulk_srb = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_bulk_srb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_bulk_srb to i32), ptr @__kstrtab_usb_stor_bulk_srb, ptr @__kstrtabns_usb_stor_bulk_srb }, section "___ksymtab_gpl+usb_stor_bulk_srb", align 4
@__kstrtab_usb_stor_bulk_transfer_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_bulk_transfer_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_bulk_transfer_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_bulk_transfer_sg to i32), ptr @__kstrtab_usb_stor_bulk_transfer_sg, ptr @__kstrtabns_usb_stor_bulk_transfer_sg }, section "___ksymtab_gpl+usb_stor_bulk_transfer_sg", align 4
@__kstrtab_usb_stor_CB_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_CB_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_CB_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_CB_transport to i32), ptr @__kstrtab_usb_stor_CB_transport, ptr @__kstrtabns_usb_stor_CB_transport }, section "___ksymtab_gpl+usb_stor_CB_transport", align 4
@.str = private unnamed_addr constant [41 x i8] c"Max LUN %d is not valid, using 0 instead\00", align 1
@usb_stor_sense_invalidCDB = external dso_local local_unnamed_addr global [18 x i8], align 1
@__kstrtab_usb_stor_Bulk_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_Bulk_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_Bulk_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_Bulk_transport to i32), ptr @__kstrtab_usb_stor_Bulk_transport, ptr @__kstrtabns_usb_stor_Bulk_transport }, section "___ksymtab_gpl+usb_stor_Bulk_transport", align 4
@__kstrtab_usb_stor_CB_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_CB_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_CB_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_CB_reset to i32), ptr @__kstrtab_usb_stor_CB_reset, ptr @__kstrtabns_usb_stor_CB_reset }, section "___ksymtab_gpl+usb_stor_CB_reset", align 4
@__kstrtab_usb_stor_Bulk_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_Bulk_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_Bulk_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_Bulk_reset to i32), ptr @__kstrtab_usb_stor_Bulk_reset, ptr @__kstrtabns_usb_stor_Bulk_reset }, section "___ksymtab_gpl+usb_stor_Bulk_reset", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@last_sector_hacks.record_not_found = internal unnamed_addr constant [18 x i8] c"p\00\03\00\00\00\00\0A\00\00\00\00\14\00\00\00\00\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_usb_stor_Bulk_reset, ptr @__ksymtab_usb_stor_Bulk_transport, ptr @__ksymtab_usb_stor_CB_reset, ptr @__ksymtab_usb_stor_CB_transport, ptr @__ksymtab_usb_stor_bulk_srb, ptr @__ksymtab_usb_stor_bulk_transfer_buf, ptr @__ksymtab_usb_stor_bulk_transfer_sg, ptr @__ksymtab_usb_stor_clear_halt, ptr @__ksymtab_usb_stor_control_msg, ptr @__ksymtab_usb_stor_ctrl_transfer], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_control_msg(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  store i8 %3, ptr %11, align 1
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 1
  store i8 %2, ptr %13, align 1
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %14, i32 0, i32 2
  store i16 %4, ptr %15, align 1
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %16, i32 0, i32 3
  store i16 %5, ptr %17, align 1
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %18, i32 0, i32 4
  store i16 %7, ptr %19, align 1
  %20 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = zext i16 %7 to i32
  %26 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 8
  store ptr %23, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 10
  store i32 %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 21
  store ptr %24, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 14
  store ptr %6, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 19
  store i32 %25, ptr %30, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %31, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 27
  store ptr null, ptr %32, align 4
  %33 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef %8)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %9
  %36 = load ptr, ptr %20, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %36, i32 0, i32 20
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %35, %9
  %40 = phi i32 [ %38, %35 ], [ %33, %9 ]
  ret i32 %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usb_stor_blocking_completion(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  tail call void @complete(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.completion, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 12, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  %10 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #7
  %11 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.urb, ptr %12, i32 0, i32 27
  store ptr %3, ptr %13, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 13
  store i32 0, ptr %15, align 4
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 28
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 4
  store i32 %25, ptr %23, align 4
  %26 = load ptr, ptr %11, align 4
  br label %27

27:                                               ; preds = %22, %9
  %28 = phi ptr [ %26, %22 ], [ %16, %9 ]
  %29 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 29
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %11, align 4
  %33 = call i32 @usb_submit_urb(ptr noundef %32, i32 noundef 3072) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %27
  call void @_set_bit(i32 noundef 0, ptr noundef %5) #7
  %36 = load volatile i32, ptr %5, align 4
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %5) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %11, align 4
  %44 = call i32 @usb_unlink_urb(ptr noundef %43) #7
  br label %45

45:                                               ; preds = %42, %39, %35
  %46 = icmp eq i32 %1, 0
  %47 = select i1 %46, i32 2147483647, i32 %1
  %48 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef nonnull %3, i32 noundef %47) #7
  call void @_clear_bit(i32 noundef 0, ptr noundef %5) #7
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load ptr, ptr %11, align 4
  call void @usb_kill_urb(ptr noundef %51) #7
  br label %52

52:                                               ; preds = %50, %45
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr inbounds %struct.urb, ptr %53, i32 0, i32 12
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %52, %27, %2
  %57 = phi i32 [ %55, %52 ], [ -5, %2 ], [ %33, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %57
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_clear_halt(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 15
  %4 = and i32 %3, 15
  %5 = and i32 %1, 128
  %6 = or i32 %4, %5
  %7 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %6 to i16
  %10 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  store i8 2, ptr %11, align 1
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 1
  store i8 1, ptr %13, align 1
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %14, i32 0, i32 2
  store i16 0, ptr %15, align 1
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %16, i32 0, i32 3
  store i16 %9, ptr %17, align 1
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %18, i32 0, i32 4
  store i16 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 8
  store ptr %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 10
  store i32 %8, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 21
  store ptr %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 14
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 19
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %30, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 27
  store ptr null, ptr %31, align 4
  %32 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 300) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 20
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %2
  %39 = phi i32 [ %37, %34 ], [ %32, %2 ]
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load ptr, ptr %22, align 4
  tail call void @usb_reset_endpoint(ptr noundef %42, i32 noundef %6) #7
  br label %43

43:                                               ; preds = %41, %38
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_reset_endpoint(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_ctrl_transfer(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6, i16 noundef zeroext %7) #0 {
  %9 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  store i8 %3, ptr %10, align 1
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %11, i32 0, i32 1
  store i8 %2, ptr %12, align 1
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %13, i32 0, i32 2
  store i16 %4, ptr %14, align 1
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %15, i32 0, i32 3
  store i16 %5, ptr %16, align 1
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %17, i32 0, i32 4
  store i16 %7, ptr %18, align 1
  %19 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %9, align 4
  %24 = zext i16 %7 to i32
  %25 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 8
  store ptr %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 10
  store i32 %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 21
  store ptr %23, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 14
  store ptr %6, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 19
  store i32 %24, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %30, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 27
  store ptr null, ptr %31, align 4
  %32 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 0)
  %33 = load ptr, ptr %19, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %33, i32 0, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = tail call fastcc i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %24, i32 noundef %32, i32 noundef %35)
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  switch i32 %3, label %59 [
    i32 0, label %6
    i32 -32, label %9
    i32 -75, label %60
    i32 -104, label %56
    i32 -121, label %57
    i32 -5, label %58
  ]

6:                                                ; preds = %5
  %7 = icmp ne i32 %4, %2
  %8 = zext i1 %7 to i32
  br label %60

9:                                                ; preds = %5
  %10 = and i32 %1, -1073741824
  %11 = icmp eq i32 %10, -2147483648
  br i1 %11, label %60, label %12

12:                                               ; preds = %9
  %13 = lshr i32 %1, 15
  %14 = and i32 %13, 15
  %15 = and i32 %1, 128
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %16 to i16
  %20 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 26
  %21 = load ptr, ptr %20, align 4
  store i8 2, ptr %21, align 1
  %22 = load ptr, ptr %20, align 4
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 1
  store i8 1, ptr %23, align 1
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %24, i32 0, i32 2
  store i16 0, ptr %25, align 1
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %26, i32 0, i32 3
  store i16 %19, ptr %27, align 1
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %28, i32 0, i32 4
  store i16 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  store ptr %33, ptr %35, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  store i32 %18, ptr %36, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 21
  store ptr %34, ptr %37, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %40, align 4
  %41 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  store ptr null, ptr %41, align 4
  %42 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 300) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %12
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr inbounds %struct.urb, ptr %45, i32 0, i32 20
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %44, %12
  %49 = phi i32 [ %47, %44 ], [ %42, %12 ]
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %32, align 4
  tail call void @usb_reset_endpoint(ptr noundef %52, i32 noundef %16) #7
  br label %53

53:                                               ; preds = %51, %48
  %54 = icmp slt i32 %49, 0
  %55 = select i1 %54, i32 4, i32 2
  br label %60

56:                                               ; preds = %5
  br label %60

57:                                               ; preds = %5
  br label %60

58:                                               ; preds = %5
  br label %60

59:                                               ; preds = %5
  br label %60

60:                                               ; preds = %59, %58, %57, %56, %53, %9, %6, %5
  %61 = phi i32 [ 4, %59 ], [ 4, %58 ], [ 1, %57 ], [ 4, %56 ], [ %8, %6 ], [ 2, %9 ], [ %55, %53 ], [ 3, %5 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 8
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 10
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 14
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 19
  store i32 %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %14, align 4
  %15 = getelementptr inbounds %struct.urb, ptr %7, i32 0, i32 27
  store ptr null, ptr %15, align 4
  %16 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 0)
  %17 = icmp eq ptr %4, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 20
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %4, align 4
  br label %22

22:                                               ; preds = %18, %5
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = tail call fastcc i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %16, i32 noundef %25)
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_bulk_srb(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 17, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 17, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = call fastcc i32 @usb_stor_bulk_transfer_sglist(ptr noundef %0, i32 noundef %1, ptr noundef %6, i32 noundef %8, i32 noundef %10, ptr noundef nonnull %4)
  %12 = load i32, ptr %9, align 4
  %13 = load i32, ptr %4, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr inbounds %struct.scsi_request, ptr %2, i32 0, i32 5
  store i32 %14, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_stor_bulk_transfer_sglist(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 27
  %13 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @usb_sg_init(ptr noundef %12, ptr noundef %14, i32 noundef %1, i32 noundef 0, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 3072) #7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %7) #7
  %18 = load volatile i32, ptr %7, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %7) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @usb_sg_cancel(ptr noundef %12) #7
  br label %25

25:                                               ; preds = %24, %21, %17
  tail call void @usb_sg_wait(ptr noundef %12) #7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %7) #7
  %26 = load i32, ptr %12, align 4
  %27 = icmp eq ptr %5, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 27, i32 1
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %5, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 27, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = tail call fastcc i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %26, i32 noundef %33)
  br label %38

35:                                               ; preds = %11, %6
  %36 = icmp eq ptr %5, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  store i32 0, ptr %5, align 4
  br label %38

38:                                               ; preds = %37, %35, %31
  %39 = phi i32 [ %34, %31 ], [ 4, %37 ], [ 4, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_bulk_transfer_sg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call fastcc i32 @usb_stor_bulk_transfer_sglist(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %3, ptr noundef nonnull %7)
  br label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 10
  store i32 %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 19
  store i32 %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %20, align 4
  %21 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 27
  store ptr null, ptr %21, align 4
  %22 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 0) #7
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %7, align 4
  %26 = tail call fastcc i32 @interpret_urb_result(ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %22, i32 noundef %25) #7
  br label %27

27:                                               ; preds = %11, %9
  %28 = phi i32 [ %10, %9 ], [ %26, %11 ]
  %29 = icmp eq ptr %5, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %7, align 4
  %32 = sub i32 %3, %31
  store i32 %32, ptr %5, align 4
  br label %33

33:                                               ; preds = %30, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_invoke_transport(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.scsi_eh_save, align 4
  %4 = alloca %struct.scsi_sense_hdr, align 8
  %5 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %1) #7
  %9 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 5
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 327680, ptr %14, align 4
  br label %330

15:                                               ; preds = %2
  switch i32 %8, label %76 [
    i32 3, label %16
    i32 2, label %18
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 458752, ptr %17, align 4
  br label %330

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 38
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %432, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %25, align 1
  switch i8 %26, label %71 [
    i8 40, label %27
    i8 42, label %27
  ]

27:                                               ; preds = %23, %23
  %28 = getelementptr i8, ptr %25, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw i32 %30, 24
  %32 = getelementptr i8, ptr %25, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or i32 %35, %31
  %37 = getelementptr i8, ptr %25, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = or i32 %36, %40
  %42 = getelementptr i8, ptr %25, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %41, %44
  %46 = getelementptr i8, ptr %0, i32 -168
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.request_queue, ptr %47, i32 0, i32 15
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %74, label %51

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 10
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %74, label %55

55:                                               ; preds = %51
  %56 = add i32 %45, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.scsi_disk, ptr %53, i32 0, i32 7
  %59 = load i64, ptr %58, align 8
  %60 = icmp eq i64 %59, %57
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 39
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %432, label %66

66:                                               ; preds = %61
  store i32 2, ptr %19, align 4
  %67 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %68 = load ptr, ptr %67, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %68, ptr noundef nonnull align 1 dereferenceable(18) @last_sector_hacks.record_not_found, i32 18, i1 false) #7
  %69 = load ptr, ptr %24, align 4
  %70 = load i8, ptr %69, align 1
  br label %71

71:                                               ; preds = %66, %23
  %72 = phi i8 [ %70, %66 ], [ %26, %23 ]
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %432, label %74

74:                                               ; preds = %71, %55, %51, %27
  %75 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 39
  store i32 0, ptr %75, align 4
  br label %432

76:                                               ; preds = %15
  %77 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 15
  %79 = load i8, ptr %78, align 1
  switch i8 %79, label %85 [
    i8 1, label %80
    i8 -16, label %80
  ]

80:                                               ; preds = %76, %76
  %81 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 15
  %82 = load i32, ptr %81, align 4
  %83 = icmp ne i32 %82, 2
  %84 = zext i1 %83 to i32
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi i32 [ 0, %76 ], [ %84, %80 ]
  %87 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %90 = load ptr, ptr %89, align 4
  %91 = load i8, ptr %90, align 1
  %92 = icmp ne i8 %91, 53
  %93 = icmp sgt i32 %88, -1
  %94 = select i1 %93, i1 true, i1 %92
  %95 = icmp ne i32 %8, 1
  %96 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %97 = icmp eq i8 %91, -123
  br i1 %97, label %102, label %98

98:                                               ; preds = %85
  %99 = icmp eq i8 %91, -95
  %100 = icmp eq i32 %8, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %104, label %114

102:                                              ; preds = %85
  %103 = icmp eq i32 %8, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %102, %98
  %105 = and i32 %88, 163840
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = getelementptr i8, ptr %90, i32 2
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, 32
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %114, !prof !9

112:                                              ; preds = %107
  %113 = or i32 %88, 32768
  store i32 %113, ptr %87, align 4
  br label %114

114:                                              ; preds = %112, %107, %104, %102, %98
  %115 = phi i32 [ %88, %98 ], [ %88, %102 ], [ %88, %104 ], [ %113, %112 ], [ %88, %107 ]
  %116 = icmp eq i32 %86, 0
  %117 = select i1 %95, i1 %94, i1 false
  %118 = select i1 %117, i1 %116, i1 false
  br i1 %118, label %225, label %119

119:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(80) %3, i8 0, i32 80, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !8
  %120 = and i32 %115, 32768
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 18, i32 -1
  %123 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 14
  %124 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %125 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 22
  br label %126

126:                                              ; preds = %148, %119
  %127 = phi i32 [ %122, %119 ], [ 18, %148 ]
  call void @scsi_eh_prep_cmnd(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0, i32 noundef %127) #7
  %128 = load i8, ptr %123, align 4
  switch i8 %128, label %129 [
    i8 1, label %130
    i8 6, label %130
    i8 -15, label %130
  ]

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129, %126, %126, %126
  %131 = phi i16 [ 12, %129 ], [ 6, %126 ], [ 6, %126 ], [ 6, %126 ]
  store i16 %131, ptr %124, align 4
  store i32 0, ptr %5, align 4
  %132 = load ptr, ptr %6, align 4
  %133 = load ptr, ptr %125, align 4
  %134 = call i32 %132(ptr noundef %133, ptr noundef %1) #7
  call void @scsi_eh_restore_cmnd(ptr noundef %0, ptr noundef nonnull %3) #7
  %135 = load volatile i32, ptr %9, align 4
  %136 = and i32 %135, 32
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %130
  store i32 327680, ptr %77, align 4
  %139 = icmp eq i32 %127, 18
  br i1 %139, label %223, label %140

140:                                              ; preds = %138
  %141 = load i32, ptr %87, align 4
  %142 = and i32 %141, -163841
  %143 = or i32 %142, 131072
  store i32 %143, ptr %87, align 4
  br label %223

144:                                              ; preds = %130
  %145 = icmp eq i32 %134, 1
  %146 = icmp ne i32 %127, 18
  %147 = and i1 %146, %145
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, ptr %87, align 4
  %150 = and i32 %149, -163841
  %151 = or i32 %150, 131072
  store i32 %151, ptr %87, align 4
  br label %126

152:                                              ; preds = %144
  %153 = icmp eq i32 %134, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %152
  store i32 458752, ptr %77, align 4
  %155 = load i32, ptr %87, align 4
  %156 = and i32 %155, 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %223, label %224

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr i8, ptr %160, i32 7
  %162 = load i8, ptr %161, align 1
  %163 = icmp ugt i8 %162, 10
  br i1 %163, label %164, label %177

164:                                              ; preds = %158
  %165 = load i32, ptr %87, align 4
  %166 = and i32 %165, 163840
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i8, ptr %160, align 1
  %170 = and i8 %169, 124
  %171 = icmp eq i8 %170, 112
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = or i32 %165, 32768
  store i32 %173, ptr %87, align 4
  %174 = load ptr, ptr %159, align 4
  %175 = getelementptr i8, ptr %174, i32 7
  store i8 10, ptr %175, align 1
  %176 = load ptr, ptr %159, align 4
  br label %177

177:                                              ; preds = %172, %168, %164, %158
  %178 = phi ptr [ %176, %172 ], [ %160, %168 ], [ %160, %164 ], [ %160, %158 ]
  %179 = call zeroext i1 @scsi_normalize_sense(ptr noundef %178, i32 noundef 96, ptr noundef nonnull %4) #7
  store i32 2, ptr %77, align 4
  %180 = load ptr, ptr %159, align 4
  %181 = call ptr @scsi_sense_desc_find(ptr noundef %180, i32 noundef 96, i32 noundef 4) #7
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %177
  %184 = getelementptr i8, ptr %181, i32 3
  br label %188

185:                                              ; preds = %177
  %186 = load ptr, ptr %159, align 4
  %187 = getelementptr i8, ptr %186, i32 2
  br label %188

188:                                              ; preds = %185, %183
  %189 = phi ptr [ %184, %183 ], [ %187, %185 ]
  %190 = load i8, ptr %189, align 1
  %191 = and i8 %190, -96
  %192 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 1
  %193 = load i8, ptr %192, align 1
  %194 = icmp eq i8 %193, 0
  %195 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 2
  %196 = load i8, ptr %195, align 2
  %197 = icmp eq i8 %196, 0
  %198 = select i1 %194, i1 %197, i1 false
  %199 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %4, i32 0, i32 3
  %200 = load i8, ptr %199, align 1
  %201 = icmp eq i8 %200, 0
  %202 = select i1 %198, i1 %201, i1 false
  %203 = icmp eq i8 %191, 0
  %204 = select i1 %202, i1 %203, i1 false
  br i1 %204, label %205, label %221

205:                                              ; preds = %188
  %206 = icmp eq i32 %8, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  store i32 0, ptr %77, align 4
  %208 = load ptr, ptr %159, align 4
  store i8 0, ptr %208, align 1
  br label %221

209:                                              ; preds = %205
  %210 = load ptr, ptr %96, align 4
  %211 = load i8, ptr %210, align 1
  switch i8 %211, label %212 [
    i8 -123, label %221
    i8 -95, label %221
  ]

212:                                              ; preds = %209
  store i32 458752, ptr %77, align 4
  %213 = load i8, ptr %4, align 8
  %214 = and i8 %213, 114
  %215 = icmp eq i8 %214, 114
  %216 = load ptr, ptr %159, align 4
  br i1 %215, label %217, label %219

217:                                              ; preds = %212
  %218 = getelementptr i8, ptr %216, i32 1
  store i8 4, ptr %218, align 1
  br label %221

219:                                              ; preds = %212
  %220 = getelementptr i8, ptr %216, i32 2
  store i8 4, ptr %220, align 1
  br label %221

221:                                              ; preds = %219, %217, %209, %209, %207, %188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  %222 = load i32, ptr %87, align 4
  br label %225

223:                                              ; preds = %154, %140, %138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  br label %330

224:                                              ; preds = %154
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #7
  br label %432

225:                                              ; preds = %221, %114
  %226 = phi i32 [ %222, %221 ], [ %115, %114 ]
  %227 = and i32 %226, 1048576
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %250, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr %96, align 4
  %231 = load i8, ptr %230, align 1
  %232 = icmp eq i8 %231, 40
  br i1 %232, label %233, label %250, !prof !9

233:                                              ; preds = %229
  %234 = load i32, ptr %77, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %233
  %237 = load volatile i32, ptr %9, align 4
  %238 = and i32 %237, 256
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  call void @_clear_bit(i32 noundef 8, ptr noundef %9) #7
  br label %241

241:                                              ; preds = %240, %233
  %242 = phi i32 [ 7, %240 ], [ 8, %233 ]
  call void @_set_bit(i32 noundef %242, ptr noundef %9) #7
  br label %243

243:                                              ; preds = %241, %236
  %244 = load volatile i32, ptr %9, align 4
  %245 = and i32 %244, 128
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  call void @_clear_bit(i32 noundef 7, ptr noundef %9) #7
  store i32 786432, ptr %77, align 4
  %248 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %249 = load ptr, ptr %248, align 4
  store i8 0, ptr %249, align 1
  br label %250

250:                                              ; preds = %247, %243, %229, %225
  %251 = load i32, ptr %77, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr i8, ptr %255, i32 2
  %257 = load i8, ptr %256, align 1
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %253, %250
  %260 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = load i32, ptr %5, align 4
  %263 = sub i32 %261, %262
  %264 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 19
  %265 = load i32, ptr %264, align 4
  %266 = icmp ult i32 %263, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  store i32 458752, ptr %77, align 4
  br label %268

268:                                              ; preds = %267, %259, %253
  %269 = phi i32 [ 458752, %267 ], [ %251, %259 ], [ 458752, %253 ]
  %270 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 38
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %432, label %273

273:                                              ; preds = %268
  %274 = load ptr, ptr %96, align 4
  %275 = load i8, ptr %274, align 1
  switch i8 %275, label %324 [
    i8 40, label %276
    i8 42, label %276
  ]

276:                                              ; preds = %273, %273
  %277 = getelementptr i8, ptr %274, i32 2
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = shl nuw i32 %279, 24
  %281 = getelementptr i8, ptr %274, i32 3
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  %284 = shl nuw nsw i32 %283, 16
  %285 = or i32 %284, %280
  %286 = getelementptr i8, ptr %274, i32 4
  %287 = load i8, ptr %286, align 1
  %288 = zext i8 %287 to i32
  %289 = shl nuw nsw i32 %288, 8
  %290 = or i32 %285, %289
  %291 = getelementptr i8, ptr %274, i32 5
  %292 = load i8, ptr %291, align 1
  %293 = zext i8 %292 to i32
  %294 = or i32 %290, %293
  %295 = getelementptr i8, ptr %0, i32 -168
  %296 = load ptr, ptr %295, align 8
  %297 = getelementptr inbounds %struct.request_queue, ptr %296, i32 0, i32 15
  %298 = load ptr, ptr %297, align 8
  %299 = icmp eq ptr %298, null
  br i1 %299, label %324, label %300

300:                                              ; preds = %276
  %301 = getelementptr inbounds %struct.gendisk, ptr %298, i32 0, i32 10
  %302 = load ptr, ptr %301, align 8
  %303 = icmp eq ptr %302, null
  br i1 %303, label %324, label %304

304:                                              ; preds = %300
  %305 = add i32 %294, 1
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds %struct.scsi_disk, ptr %302, i32 0, i32 7
  %308 = load i64, ptr %307, align 8
  %309 = icmp eq i64 %308, %306
  br i1 %309, label %310, label %324

310:                                              ; preds = %304
  %311 = icmp eq i32 %269, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %310
  %313 = load i32, ptr %5, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  store i32 0, ptr %270, align 4
  br label %324

316:                                              ; preds = %312, %310
  %317 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 39
  %318 = load i32, ptr %317, align 4
  %319 = add i32 %318, 1
  store i32 %319, ptr %317, align 4
  %320 = icmp slt i32 %319, 3
  br i1 %320, label %432, label %321

321:                                              ; preds = %316
  store i32 2, ptr %77, align 4
  %322 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %323 = load ptr, ptr %322, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %323, ptr noundef nonnull align 1 dereferenceable(18) @last_sector_hacks.record_not_found, i32 18, i1 false) #7
  br label %324

324:                                              ; preds = %321, %315, %304, %300, %276, %273
  %325 = load ptr, ptr %96, align 4
  %326 = load i8, ptr %325, align 1
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %432, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 39
  store i32 0, ptr %329, align 4
  br label %432

330:                                              ; preds = %223, %16, %13
  %331 = getelementptr i8, ptr %1, i32 -1284
  %332 = load ptr, ptr %331, align 4
  call void @_raw_spin_lock_irq(ptr noundef %332) #7
  call void @_set_bit(i32 noundef 4, ptr noundef %9) #7
  call void @_clear_bit(i32 noundef 2, ptr noundef %9) #7
  %333 = load ptr, ptr %331, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %334 = load i16, ptr %333, align 4
  %335 = add i16 %334, 1
  store i16 %335, ptr %333, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  call void @mutex_unlock(ptr noundef %1) #7
  %336 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 1
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr inbounds %struct.usb_device, ptr %337, i32 0, i32 36
  %339 = load i32, ptr %338, align 8
  %340 = and i32 %339, 16
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %359

342:                                              ; preds = %330
  %343 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 2
  %344 = load ptr, ptr %343, align 4
  %345 = call i32 @usb_lock_device_for_reset(ptr noundef %337, ptr noundef %344) #7
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %359, label %347

347:                                              ; preds = %342
  %348 = load volatile i32, ptr %9, align 4
  %349 = and i32 %348, 8
  %350 = icmp eq i32 %349, 0
  %351 = load ptr, ptr %336, align 4
  br i1 %350, label %352, label %357

352:                                              ; preds = %347
  %353 = call i32 @usb_reset_device(ptr noundef %351) #7
  %354 = icmp slt i32 %353, 0
  %355 = load ptr, ptr %336, align 4
  %356 = getelementptr inbounds %struct.usb_device, ptr %355, i32 0, i32 15, i32 9
  call void @mutex_unlock(ptr noundef %356) #7
  call void @mutex_lock(ptr noundef %1) #7
  br i1 %354, label %360, label %368

357:                                              ; preds = %347
  %358 = getelementptr inbounds %struct.usb_device, ptr %351, i32 0, i32 15, i32 9
  call void @mutex_unlock(ptr noundef %358) #7
  br label %359

359:                                              ; preds = %357, %342, %330
  call void @mutex_lock(ptr noundef %1) #7
  br label %360

360:                                              ; preds = %359, %352
  %361 = load ptr, ptr %331, align 4
  call void @_raw_spin_lock_irq(ptr noundef %361) #7
  call void @usb_stor_report_device_reset(ptr noundef %1) #7
  %362 = load ptr, ptr %331, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %363 = load i16, ptr %362, align 4
  %364 = add i16 %363, 1
  store i16 %364, ptr %362, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #7, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !14
  %365 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 20
  %366 = load ptr, ptr %365, align 4
  %367 = call i32 %366(ptr noundef %1) #7
  br label %368

368:                                              ; preds = %360, %352
  call void @_clear_bit(i32 noundef 4, ptr noundef %9) #7
  %369 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 38
  %370 = load i32, ptr %369, align 4
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %432, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %374 = load ptr, ptr %373, align 4
  %375 = load i8, ptr %374, align 1
  switch i8 %375, label %426 [
    i8 40, label %376
    i8 42, label %376
  ]

376:                                              ; preds = %372, %372
  %377 = getelementptr i8, ptr %374, i32 2
  %378 = load i8, ptr %377, align 1
  %379 = zext i8 %378 to i32
  %380 = shl nuw i32 %379, 24
  %381 = getelementptr i8, ptr %374, i32 3
  %382 = load i8, ptr %381, align 1
  %383 = zext i8 %382 to i32
  %384 = shl nuw nsw i32 %383, 16
  %385 = or i32 %384, %380
  %386 = getelementptr i8, ptr %374, i32 4
  %387 = load i8, ptr %386, align 1
  %388 = zext i8 %387 to i32
  %389 = shl nuw nsw i32 %388, 8
  %390 = or i32 %385, %389
  %391 = getelementptr i8, ptr %374, i32 5
  %392 = load i8, ptr %391, align 1
  %393 = zext i8 %392 to i32
  %394 = or i32 %390, %393
  %395 = getelementptr i8, ptr %0, i32 -168
  %396 = load ptr, ptr %395, align 8
  %397 = getelementptr inbounds %struct.request_queue, ptr %396, i32 0, i32 15
  %398 = load ptr, ptr %397, align 8
  %399 = icmp eq ptr %398, null
  br i1 %399, label %426, label %400

400:                                              ; preds = %376
  %401 = getelementptr inbounds %struct.gendisk, ptr %398, i32 0, i32 10
  %402 = load ptr, ptr %401, align 8
  %403 = icmp eq ptr %402, null
  br i1 %403, label %426, label %404

404:                                              ; preds = %400
  %405 = add i32 %394, 1
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds %struct.scsi_disk, ptr %402, i32 0, i32 7
  %408 = load i64, ptr %407, align 8
  %409 = icmp eq i64 %408, %406
  br i1 %409, label %410, label %426

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  %412 = load i32, ptr %411, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %410
  %415 = load i32, ptr %5, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %414
  store i32 0, ptr %369, align 4
  br label %426

418:                                              ; preds = %414, %410
  %419 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 39
  %420 = load i32, ptr %419, align 4
  %421 = add i32 %420, 1
  store i32 %421, ptr %419, align 4
  %422 = icmp slt i32 %421, 3
  br i1 %422, label %432, label %423

423:                                              ; preds = %418
  store i32 2, ptr %411, align 4
  %424 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %425 = load ptr, ptr %424, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %425, ptr noundef nonnull align 1 dereferenceable(18) @last_sector_hacks.record_not_found, i32 18, i1 false) #7
  br label %426

426:                                              ; preds = %423, %417, %404, %400, %376, %372
  %427 = load ptr, ptr %373, align 4
  %428 = load i8, ptr %427, align 1
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 39
  store i32 0, ptr %431, align 4
  br label %432

432:                                              ; preds = %430, %426, %418, %368, %328, %324, %316, %268, %224, %74, %71, %61, %18
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_prep_cmnd(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_eh_restore_cmnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_normalize_sense(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_sense_desc_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_port_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 36
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @usb_lock_device_for_reset(ptr noundef %3, ptr noundef %10) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 4
  %20 = tail call i32 @usb_reset_device(ptr noundef %19) #7
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ -5, %13 ]
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15, i32 9
  tail call void @mutex_unlock(ptr noundef %24) #7
  br label %25

25:                                               ; preds = %21, %8, %1
  %26 = phi i32 [ -1, %1 ], [ %11, %8 ], [ %22, %21 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_report_device_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_stop_transport(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  %3 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %2) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @usb_unlink_urb(ptr noundef %7) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %2) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 27
  tail call void @usb_sg_cancel(ptr noundef %13) #7
  br label %14

14:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_CB_transport(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %9, i32 %12, i1 false)
  %13 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 17
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i16
  %18 = load ptr, ptr %6, align 4
  %19 = load i16, ptr %10, align 4
  %20 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 26
  %21 = load ptr, ptr %20, align 4
  store i8 33, ptr %21, align 1
  %22 = load ptr, ptr %20, align 4
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 1
  store i8 0, ptr %23, align 1
  %24 = load ptr, ptr %20, align 4
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %24, i32 0, i32 2
  store i16 0, ptr %25, align 1
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %26, i32 0, i32 3
  store i16 %17, ptr %27, align 1
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %28, i32 0, i32 4
  store i16 %19, ptr %29, align 1
  %30 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 25
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %20, align 4
  %35 = zext i16 %19 to i32
  %36 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  store ptr %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  store i32 %14, ptr %37, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 21
  store ptr %34, ptr %38, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  store ptr %18, ptr %39, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  store i32 %35, ptr %40, align 4
  %41 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %41, align 4
  %42 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  store ptr null, ptr %42, align 4
  %43 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %1, i32 noundef 0) #7
  %44 = load ptr, ptr %30, align 4
  %45 = getelementptr inbounds %struct.urb, ptr %44, i32 0, i32 20
  %46 = load i32, ptr %45, align 4
  %47 = tail call fastcc i32 @interpret_urb_result(ptr noundef %1, i32 noundef %14, i32 noundef %35, i32 noundef %43, i32 noundef %46) #7
  switch i32 %47, label %48 [
    i32 2, label %154
    i32 0, label %49
  ]

48:                                               ; preds = %2
  br label %154

49:                                               ; preds = %2
  %50 = icmp eq i32 %5, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 15
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 2
  %55 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 7
  %56 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 6
  %57 = select i1 %54, ptr %55, ptr %56
  %58 = load i32, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %59 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %4, align 4
  %64 = call fastcc i32 @usb_stor_bulk_transfer_sglist(ptr noundef %1, i32 noundef %58, ptr noundef %60, i32 noundef %62, i32 noundef %63, ptr noundef nonnull %3) #7
  %65 = load i32, ptr %4, align 4
  %66 = load i32, ptr %3, align 4
  %67 = sub i32 %65, %66
  %68 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  store i32 %67, ptr %68, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %69 = icmp eq i32 %64, 2
  br i1 %69, label %154, label %70

70:                                               ; preds = %51
  %71 = icmp sgt i32 %64, 2
  br i1 %71, label %154, label %72

72:                                               ; preds = %70, %49
  %73 = phi i32 [ %58, %70 ], [ 0, %49 ]
  %74 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 15
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %154

77:                                               ; preds = %72
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 10
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %32, align 4
  %82 = lshr i32 %80, 15
  %83 = and i32 %82, 15
  %84 = and i32 %80, 128
  %85 = icmp eq i32 %84, 0
  %86 = getelementptr %struct.usb_device, ptr %81, i32 0, i32 22, i32 %83
  %87 = getelementptr %struct.usb_device, ptr %81, i32 0, i32 21, i32 %83
  %88 = select i1 %85, ptr %86, ptr %87
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %89, i32 0, i32 4
  %93 = load i16, ptr %92, align 1
  %94 = and i16 %93, 2047
  %95 = call i16 @llvm.umin.i16(i16 %94, i16 2) #7
  %96 = zext i16 %95 to i32
  br label %97

97:                                               ; preds = %91, %77
  %98 = phi i32 [ 0, %77 ], [ %96, %91 ]
  %99 = load ptr, ptr %30, align 4
  %100 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 18
  %101 = load i8, ptr %100, align 4
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 8
  store ptr %81, ptr %103, align 4
  %104 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 10
  store i32 %80, ptr %104, align 4
  %105 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 14
  store ptr %78, ptr %105, align 4
  %106 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 19
  store i32 %98, ptr %106, align 4
  %107 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %107, align 4
  %108 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 27
  store ptr null, ptr %108, align 4
  %109 = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 3
  %112 = icmp ugt i32 %110, 4
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %97
  %115 = call i32 @llvm.smax.i32(i32 %102, i32 1) #7
  %116 = call i32 @llvm.umin.i32(i32 %115, i32 16) #7
  %117 = add nsw i32 %116, -1
  %118 = shl nuw nsw i32 1, %117
  br label %119

119:                                              ; preds = %114, %97
  %120 = phi i32 [ %118, %114 ], [ %102, %97 ]
  %121 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 25
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.urb, ptr %99, i32 0, i32 23
  store i32 -1, ptr %122, align 4
  %123 = call fastcc i32 @usb_stor_msg_common(ptr noundef %1, i32 noundef 0) #7
  %124 = load ptr, ptr %30, align 4
  %125 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 20
  %126 = load i32, ptr %125, align 4
  %127 = call fastcc i32 @interpret_urb_result(ptr noundef %1, i32 noundef %80, i32 noundef 2, i32 noundef %123, i32 noundef %126) #7
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 14
  %131 = load i8, ptr %130, align 4
  %132 = icmp eq i8 %131, 4
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load ptr, ptr %8, align 4
  %135 = load i8, ptr %134, align 1
  switch i8 %135, label %136 [
    i8 3, label %154
    i8 18, label %154
  ]

136:                                              ; preds = %133
  %137 = load ptr, ptr %6, align 4
  %138 = load i8, ptr %137, align 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %154, label %150

140:                                              ; preds = %129
  %141 = load ptr, ptr %6, align 4
  %142 = load i8, ptr %141, align 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = getelementptr i8, ptr %141, i32 1
  %146 = load i8, ptr %145, align 1
  %147 = and i8 %146, 15
  %148 = zext i8 %147 to i32
  switch i32 %148, label %149 [
    i32 0, label %154
    i32 1, label %150
  ]

149:                                              ; preds = %144
  br label %154

150:                                              ; preds = %144, %140, %136
  %151 = icmp eq i32 %73, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %150
  %153 = call i32 @usb_stor_clear_halt(ptr noundef %1, i32 noundef %73)
  br label %154

154:                                              ; preds = %152, %150, %149, %144, %136, %133, %133, %119, %72, %70, %51, %48, %2
  %155 = phi i32 [ 3, %48 ], [ 3, %149 ], [ 1, %2 ], [ 1, %51 ], [ 3, %70 ], [ 0, %72 ], [ 3, %119 ], [ 0, %133 ], [ 0, %133 ], [ 0, %136 ], [ %148, %144 ], [ 1, %152 ], [ 1, %150 ]
  ret i32 %155
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_Bulk_max_lun(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 17
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  store i8 -95, ptr %11, align 1
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %12, i32 0, i32 1
  store i8 -2, ptr %13, align 1
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %14, i32 0, i32 2
  store i16 0, ptr %15, align 1
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %16, i32 0, i32 3
  store i16 %8, ptr %17, align 1
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %18, i32 0, i32 4
  store i16 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 8
  store ptr %23, ptr %25, align 4
  %26 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 10
  store i32 %5, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 21
  store ptr %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 14
  store ptr %9, ptr %28, align 4
  %29 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 19
  store i32 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %30, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %21, i32 0, i32 27
  store ptr null, ptr %31, align 4
  %32 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 1000) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load ptr, ptr %20, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 20
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = phi i32 [ %37, %34 ], [ %32, %1 ]
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load ptr, ptr %2, align 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ult i8 %43, 16
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.usb_interface, ptr %48, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str, i32 noundef %44) #8
  br label %50

50:                                               ; preds = %46, %41, %38
  %51 = phi i32 [ %44, %41 ], [ 0, %46 ], [ 0, %38 ]
  ret i32 %51
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_Bulk_transport(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !15

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %7, i32 31
  store i8 0, ptr %15, align 1
  br label %16

16:                                               ; preds = %14, %2
  %17 = phi i32 [ 32, %14 ], [ 31, %2 ]
  store i32 1128420181, ptr %7, align 4
  %18 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 2
  store i32 %9, ptr %18, align 4
  %19 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, i8 -128, i8 0
  %23 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 3
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 23
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 18
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 4
  store i8 %32, ptr %33, align 1
  %34 = load i32, ptr %10, align 4
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %16
  %38 = load ptr, ptr %28, align 4
  %39 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 16
  %40 = load i32, ptr %39, align 8
  %41 = shl i32 %40, 4
  %42 = trunc i64 %31 to i32
  %43 = or i32 %41, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %33, align 1
  br label %45

45:                                               ; preds = %37, %16
  %46 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %47 = load i16, ptr %46, align 4
  %48 = trunc i16 %47 to i8
  %49 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 5
  store i8 %48, ptr %49, align 2
  %50 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %7, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %50, i8 0, i32 16, i1 false)
  %51 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %52 = load ptr, ptr %51, align 4
  %53 = and i16 %47, 255
  %54 = zext i16 %53 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr align 1 %52, i32 %54, i1 false)
  %55 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 25
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 8
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 10
  store i32 %56, ptr %62, align 4
  %63 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 14
  store ptr %7, ptr %63, align 4
  %64 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 19
  store i32 %17, ptr %64, align 4
  %65 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %65, align 4
  %66 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 27
  store ptr null, ptr %66, align 4
  %67 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %1, i32 noundef 0) #7
  %68 = load ptr, ptr %57, align 4
  %69 = getelementptr inbounds %struct.urb, ptr %68, i32 0, i32 20
  %70 = load i32, ptr %69, align 4
  %71 = tail call fastcc i32 @interpret_urb_result(ptr noundef %1, i32 noundef %56, i32 noundef %17, i32 noundef %67, i32 noundef %70) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %227

73:                                               ; preds = %45
  %74 = load i32, ptr %10, align 4
  %75 = and i32 %74, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !15

77:                                               ; preds = %73
  tail call void @usleep_range_state(i32 noundef 125, i32 noundef 150, i32 noundef 2) #7
  br label %78

78:                                               ; preds = %77, %73
  %79 = icmp eq i32 %9, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr %19, align 4
  %82 = icmp eq i32 %81, 2
  %83 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 7
  %84 = select i1 %82, ptr %83, ptr %55
  %85 = load i32, ptr %84, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %86 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %8, align 4
  %91 = call fastcc i32 @usb_stor_bulk_transfer_sglist(ptr noundef %1, i32 noundef %85, ptr noundef %87, i32 noundef %89, i32 noundef %90, ptr noundef nonnull %3) #7
  %92 = load i32, ptr %8, align 4
  %93 = load i32, ptr %3, align 4
  %94 = sub i32 %92, %93
  %95 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  store i32 %94, ptr %95, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  switch i32 %91, label %110 [
    i32 4, label %227
    i32 3, label %111
    i32 1, label %96
  ]

96:                                               ; preds = %80
  %97 = load i32, ptr %19, align 4
  %98 = icmp eq i32 %97, 2
  %99 = sub i32 %9, %94
  %100 = icmp eq i32 %99, 13
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4
  %103 = call i32 @usb_stor_access_xfer_buf(ptr noundef %7, i32 noundef 13, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 1) #7
  %104 = icmp eq i32 %103, 13
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, ptr %7, align 4
  %107 = icmp eq i32 %106, 1396855637
  br i1 %107, label %109, label %108

108:                                              ; preds = %105, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %111

109:                                              ; preds = %105
  store i32 %9, ptr %95, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %167

110:                                              ; preds = %80
  br label %111

111:                                              ; preds = %110, %108, %96, %80, %78
  %112 = phi i32 [ 0, %78 ], [ 0, %108 ], [ 0, %96 ], [ 1, %80 ], [ 0, %110 ]
  %113 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 7
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %57, align 4
  %116 = load ptr, ptr %59, align 4
  %117 = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 8
  store ptr %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 10
  store i32 %114, ptr %118, align 4
  %119 = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 14
  store ptr %7, ptr %119, align 4
  %120 = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 19
  store i32 13, ptr %120, align 4
  %121 = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %121, align 4
  %122 = getelementptr inbounds %struct.urb, ptr %115, i32 0, i32 27
  store ptr null, ptr %122, align 4
  %123 = call fastcc i32 @usb_stor_msg_common(ptr noundef %1, i32 noundef 0) #7
  %124 = load ptr, ptr %57, align 4
  %125 = getelementptr inbounds %struct.urb, ptr %124, i32 0, i32 20
  %126 = load i32, ptr %125, align 4
  %127 = call fastcc i32 @interpret_urb_result(ptr noundef %1, i32 noundef %114, i32 noundef 13, i32 noundef %123, i32 noundef %126) #7
  %128 = icmp eq i32 %127, 1
  %129 = icmp eq i32 %126, 0
  %130 = and i1 %129, %128
  br i1 %130, label %131, label %146

131:                                              ; preds = %111
  %132 = load i32, ptr %113, align 4
  %133 = load ptr, ptr %57, align 4
  %134 = load ptr, ptr %59, align 4
  %135 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 8
  store ptr %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 10
  store i32 %132, ptr %136, align 4
  %137 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 14
  store ptr %7, ptr %137, align 4
  %138 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 19
  store i32 13, ptr %138, align 4
  %139 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %139, align 4
  %140 = getelementptr inbounds %struct.urb, ptr %133, i32 0, i32 27
  store ptr null, ptr %140, align 4
  %141 = call fastcc i32 @usb_stor_msg_common(ptr noundef %1, i32 noundef 0) #7
  %142 = load ptr, ptr %57, align 4
  %143 = getelementptr inbounds %struct.urb, ptr %142, i32 0, i32 20
  %144 = load i32, ptr %143, align 4
  %145 = call fastcc i32 @interpret_urb_result(ptr noundef %1, i32 noundef %132, i32 noundef 13, i32 noundef %141, i32 noundef %144) #7
  br label %146

146:                                              ; preds = %131, %111
  %147 = phi i32 [ %145, %131 ], [ %127, %111 ]
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load i32, ptr %113, align 4
  %151 = load ptr, ptr %57, align 4
  %152 = load ptr, ptr %59, align 4
  %153 = getelementptr inbounds %struct.urb, ptr %151, i32 0, i32 8
  store ptr %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.urb, ptr %151, i32 0, i32 10
  store i32 %150, ptr %154, align 4
  %155 = getelementptr inbounds %struct.urb, ptr %151, i32 0, i32 14
  store ptr %7, ptr %155, align 4
  %156 = getelementptr inbounds %struct.urb, ptr %151, i32 0, i32 19
  store i32 13, ptr %156, align 4
  %157 = getelementptr inbounds %struct.urb, ptr %151, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %157, align 4
  %158 = getelementptr inbounds %struct.urb, ptr %151, i32 0, i32 27
  store ptr null, ptr %158, align 4
  %159 = call fastcc i32 @usb_stor_msg_common(ptr noundef %1, i32 noundef 0) #7
  %160 = load ptr, ptr %57, align 4
  %161 = getelementptr inbounds %struct.urb, ptr %160, i32 0, i32 20
  %162 = load i32, ptr %161, align 4
  %163 = call fastcc i32 @interpret_urb_result(ptr noundef %1, i32 noundef %150, i32 noundef 13, i32 noundef %159, i32 noundef %162) #7
  br label %164

164:                                              ; preds = %149, %146
  %165 = phi i32 [ %163, %149 ], [ %147, %146 ]
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %227

167:                                              ; preds = %164, %109
  %168 = phi i32 [ 0, %109 ], [ %112, %164 ]
  %169 = load i32, ptr %18, align 4
  %170 = load i32, ptr %27, align 4
  %171 = load i32, ptr %24, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %167
  %174 = load i32, ptr %10, align 4
  %175 = and i32 %174, 16384
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %227, label %177

177:                                              ; preds = %173, %167
  %178 = load i8, ptr %23, align 4
  %179 = icmp ugt i8 %178, 2
  br i1 %179, label %227, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.us_data, ptr %1, i32 0, i32 13
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  %184 = load i32, ptr %7, align 4
  br i1 %183, label %185, label %186

185:                                              ; preds = %180
  store i32 %184, ptr %181, align 4
  br label %188

186:                                              ; preds = %180
  %187 = icmp eq i32 %184, %182
  br i1 %187, label %188, label %227

188:                                              ; preds = %186, %185
  %189 = icmp eq i32 %169, 0
  br i1 %189, label %218, label %190

190:                                              ; preds = %188
  %191 = load i32, ptr %10, align 4
  %192 = and i32 %191, 32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %218

194:                                              ; preds = %190
  %195 = load i8, ptr %23, align 4
  %196 = icmp eq i8 %195, 0
  %197 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  %200 = select i1 %196, i1 %199, i1 false
  br i1 %200, label %201, label %213

201:                                              ; preds = %194
  %202 = load ptr, ptr %51, align 4
  %203 = load i8, ptr %202, align 1
  %204 = icmp eq i8 %203, 18
  %205 = icmp eq i32 %9, 36
  %206 = select i1 %204, i1 %205, i1 false
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = icmp eq i8 %203, 37
  %209 = icmp eq i32 %9, 8
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %211, label %213

211:                                              ; preds = %207, %201
  %212 = or i32 %191, 32
  store i32 %212, ptr %10, align 4
  br label %218

213:                                              ; preds = %207, %194
  %214 = phi i32 [ 0, %207 ], [ %198, %194 ]
  %215 = call i32 @llvm.umin.i32(i32 %169, i32 %9)
  %216 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %217 = call i32 @llvm.umax.i32(i32 %214, i32 %215)
  store i32 %217, ptr %216, align 4
  br label %218

218:                                              ; preds = %213, %211, %190, %188
  %219 = load i8, ptr %23, align 4
  switch i8 %219, label %226 [
    i8 0, label %220
    i8 1, label %227
    i8 2, label %225
  ]

220:                                              ; preds = %218
  %221 = icmp eq i32 %168, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 21
  %224 = load ptr, ptr %223, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(18) %224, ptr noundef nonnull align 1 dereferenceable(18) @usb_stor_sense_invalidCDB, i32 18, i1 false)
  br label %227

225:                                              ; preds = %218
  br label %227

226:                                              ; preds = %218
  br label %227

227:                                              ; preds = %226, %225, %222, %220, %218, %186, %177, %173, %164, %80, %45
  %228 = phi i32 [ 3, %226 ], [ 3, %225 ], [ 2, %222 ], [ 3, %45 ], [ 3, %164 ], [ 3, %173 ], [ 3, %177 ], [ 3, %186 ], [ 0, %220 ], [ 1, %218 ], [ 3, %80 ]
  ret i32 %228
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_access_xfer_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_CB_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %3, i8 -1, i32 12, i1 false)
  %4 = load ptr, ptr %2, align 4
  store i8 29, ptr %4, align 1
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 1
  store i8 4, ptr %6, align 1
  %7 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 17
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = load ptr, ptr %2, align 4
  %11 = tail call fastcc i32 @usb_stor_reset_common(ptr noundef %0, i8 noundef zeroext 0, i16 noundef zeroext %9, ptr noundef %10, i16 noundef zeroext 12)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb_stor_reset_common(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef %3, i16 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 5
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %158

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 26
  %15 = load ptr, ptr %14, align 4
  store i8 33, ptr %15, align 1
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %16, i32 0, i32 1
  store i8 %1, ptr %17, align 1
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %18, i32 0, i32 2
  store i16 0, ptr %19, align 1
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %20, i32 0, i32 3
  store i16 %2, ptr %21, align 1
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 4
  store i16 %4, ptr %23, align 1
  %24 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 25
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %14, align 4
  %29 = zext i16 %4 to i32
  %30 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 8
  store ptr %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 10
  store i32 %13, ptr %31, align 4
  %32 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 21
  store ptr %28, ptr %32, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 14
  store ptr %3, ptr %33, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 19
  store i32 %29, ptr %34, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %35, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %25, i32 0, i32 27
  store ptr null, ptr %36, align 4
  %37 = tail call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 500) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %11
  %40 = load ptr, ptr %24, align 4
  %41 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 20
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = phi i32 [ %42, %39 ], [ %37, %11 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %158, label %46

46:                                               ; preds = %43
  %47 = load volatile i32, ptr %7, align 4
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #7
  %51 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 33
  %52 = call i32 @prepare_to_wait_event(ptr noundef %51, ptr noundef nonnull %6, i32 noundef 1) #7
  %53 = load volatile i32, ptr %7, align 4
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %60, %50
  %57 = phi i32 [ %69, %60 ], [ 600, %50 ]
  %58 = phi i32 [ %62, %60 ], [ %52, %50 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = call i32 @schedule_timeout(i32 noundef %57) #7
  %62 = call i32 @prepare_to_wait_event(ptr noundef %51, ptr noundef nonnull %6, i32 noundef 1) #7
  %63 = load volatile i32, ptr %7, align 4
  %64 = and i32 %63, 8
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = icmp ne i32 %61, 0
  %68 = select i1 %66, i1 true, i1 %67
  %69 = select i1 %68, i32 %61, i32 1
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %65, i1 true, i1 %70
  br i1 %71, label %72, label %56

72:                                               ; preds = %60, %50
  call void @finish_wait(ptr noundef %51, ptr noundef nonnull %6) #7
  br label %73

73:                                               ; preds = %72, %56
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #7
  br label %74

74:                                               ; preds = %73, %46
  %75 = load volatile i32, ptr %7, align 4
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %158

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %80, 15
  %82 = and i32 %81, 15
  %83 = and i32 %80, 128
  %84 = or i32 %82, %83
  %85 = load i32, ptr %12, align 4
  %86 = trunc i32 %84 to i16
  %87 = load ptr, ptr %14, align 4
  store i8 2, ptr %87, align 1
  %88 = load ptr, ptr %14, align 4
  %89 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %88, i32 0, i32 1
  store i8 1, ptr %89, align 1
  %90 = load ptr, ptr %14, align 4
  %91 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %90, i32 0, i32 2
  store i16 0, ptr %91, align 1
  %92 = load ptr, ptr %14, align 4
  %93 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %92, i32 0, i32 3
  store i16 %86, ptr %93, align 1
  %94 = load ptr, ptr %14, align 4
  %95 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %94, i32 0, i32 4
  store i16 0, ptr %95, align 1
  %96 = load ptr, ptr %24, align 4
  %97 = load ptr, ptr %26, align 4
  %98 = load ptr, ptr %14, align 4
  %99 = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 8
  store ptr %97, ptr %99, align 4
  %100 = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 10
  store i32 %85, ptr %100, align 4
  %101 = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 21
  store ptr %98, ptr %101, align 4
  %102 = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 14
  store ptr null, ptr %102, align 4
  %103 = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 19
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %104, align 4
  %105 = getelementptr inbounds %struct.urb, ptr %96, i32 0, i32 27
  store ptr null, ptr %105, align 4
  %106 = call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 300) #7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %78
  %109 = load ptr, ptr %24, align 4
  %110 = getelementptr inbounds %struct.urb, ptr %109, i32 0, i32 20
  %111 = load i32, ptr %110, align 4
  br label %112

112:                                              ; preds = %108, %78
  %113 = phi i32 [ %111, %108 ], [ %106, %78 ]
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load ptr, ptr %26, align 4
  call void @usb_reset_endpoint(ptr noundef %116, i32 noundef %84) #7
  br label %117

117:                                              ; preds = %115, %112
  %118 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = lshr i32 %119, 15
  %121 = and i32 %120, 15
  %122 = and i32 %119, 128
  %123 = or i32 %121, %122
  %124 = load i32, ptr %12, align 4
  %125 = trunc i32 %123 to i16
  %126 = load ptr, ptr %14, align 4
  store i8 2, ptr %126, align 1
  %127 = load ptr, ptr %14, align 4
  %128 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %127, i32 0, i32 1
  store i8 1, ptr %128, align 1
  %129 = load ptr, ptr %14, align 4
  %130 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %129, i32 0, i32 2
  store i16 0, ptr %130, align 1
  %131 = load ptr, ptr %14, align 4
  %132 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %131, i32 0, i32 3
  store i16 %125, ptr %132, align 1
  %133 = load ptr, ptr %14, align 4
  %134 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %133, i32 0, i32 4
  store i16 0, ptr %134, align 1
  %135 = load ptr, ptr %24, align 4
  %136 = load ptr, ptr %26, align 4
  %137 = load ptr, ptr %14, align 4
  %138 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 8
  store ptr %136, ptr %138, align 4
  %139 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 10
  store i32 %124, ptr %139, align 4
  %140 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 21
  store ptr %137, ptr %140, align 4
  %141 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 14
  store ptr null, ptr %141, align 4
  %142 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 19
  store i32 0, ptr %142, align 4
  %143 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 28
  store ptr @usb_stor_blocking_completion, ptr %143, align 4
  %144 = getelementptr inbounds %struct.urb, ptr %135, i32 0, i32 27
  store ptr null, ptr %144, align 4
  %145 = call fastcc i32 @usb_stor_msg_common(ptr noundef %0, i32 noundef 300) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %117
  %148 = load ptr, ptr %24, align 4
  %149 = getelementptr inbounds %struct.urb, ptr %148, i32 0, i32 20
  %150 = load i32, ptr %149, align 4
  br label %151

151:                                              ; preds = %147, %117
  %152 = phi i32 [ %150, %147 ], [ %145, %117 ]
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load ptr, ptr %26, align 4
  call void @usb_reset_endpoint(ptr noundef %155, i32 noundef %123) #7
  br label %156

156:                                              ; preds = %154, %151
  %157 = select i1 %114, i32 %152, i32 %113
  br label %158

158:                                              ; preds = %156, %74, %43, %5
  %159 = phi i32 [ %157, %156 ], [ -5, %5 ], [ %44, %43 ], [ -5, %74 ]
  ret i32 %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_Bulk_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 17
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i16
  %5 = tail call fastcc i32 @usb_stor_reset_common(ptr noundef %0, i8 noundef zeroext -1, i16 noundef zeroext %4, ptr noundef null, i16 noundef zeroext 0)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_sg_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{i64 2149207818}
!11 = !{i64 2149203642}
!12 = !{i64 2149203717, i64 2149203744, i64 2149203791, i64 2149203813, i64 2149203841, i64 2149203861}
!13 = !{i64 588597}
!14 = !{i64 2149231962}
!15 = !{!"branch_weights", i32 2000, i32 1}
