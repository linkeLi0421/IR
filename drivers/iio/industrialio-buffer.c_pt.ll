; ModuleID = '/llk/IR/drivers/iio/industrialio-buffer.c_pt.bc'
source_filename = "../drivers/iio/industrialio-buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_pop_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_pop_from_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_iio_pop_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_buffer_init\22\09\09\09\09\09"
module asm "__kstrtabns_iio_buffer_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_update_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_update_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_iio_update_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_validate_scan_mask_onehot:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_validate_scan_mask_onehot\22\09\09\09\09\09"
module asm "__kstrtabns_iio_validate_scan_mask_onehot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_push_to_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_push_to_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_iio_push_to_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_push_to_buffers_with_ts_unaligned:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_push_to_buffers_with_ts_unaligned\22\09\09\09\09\09"
module asm "__kstrtabns_iio_push_to_buffers_with_ts_unaligned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_buffer_get:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_buffer_get\22\09\09\09\09\09"
module asm "__kstrtabns_iio_buffer_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_buffer_put:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_buffer_put\22\09\09\09\09\09"
module asm "__kstrtabns_iio_buffer_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iio_device_attach_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22iio_device_attach_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_iio_device_attach_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iio_dev_buffer_pair = type { ptr, ptr }
%struct.iio_buffer = type { i32, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.wait_queue_head, i32, i8, %struct.list_head, %struct.attribute_group, ptr, ptr, %struct.list_head, %struct.list_head, %struct.kref }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.iio_buffer_access_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_opaque = type { %struct.iio_dev, i32, ptr, %struct.mutex, i8, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, %struct.attribute_group, %struct.list_head, ptr, i32, %struct.attribute_group, %struct.attribute_group, ptr, i32, i32, i32, %struct.cdev, i32, ptr, i32, [20 x i8], i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.62, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.62 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_demux_table = type { i32, i32, i32, %struct.list_head }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.iio_ioctl_handler = type { %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_iio_pop_from_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_pop_from_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_pop_from_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_pop_from_buffer to i32), ptr @__kstrtab_iio_pop_from_buffer, ptr @__kstrtabns_iio_pop_from_buffer }, section "___ksymtab_gpl+iio_pop_from_buffer", align 4
@iio_buffer_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&buffer->pollq\00", align 1
@__kstrtab_iio_buffer_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_buffer_init = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_buffer_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_buffer_init to i32), ptr @__kstrtab_iio_buffer_init, ptr @__kstrtabns_iio_buffer_init }, section "___ksymtab+iio_buffer_init", align 4
@__kstrtab_iio_update_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_update_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_update_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_update_buffers to i32), ptr @__kstrtab_iio_update_buffers, ptr @__kstrtabns_iio_update_buffers }, section "___ksymtab_gpl+iio_update_buffers", align 4
@__kstrtab_iio_validate_scan_mask_onehot = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_validate_scan_mask_onehot = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_validate_scan_mask_onehot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_validate_scan_mask_onehot to i32), ptr @__kstrtab_iio_validate_scan_mask_onehot, ptr @__kstrtabns_iio_validate_scan_mask_onehot }, section "___ksymtab_gpl+iio_validate_scan_mask_onehot", align 4
@__kstrtab_iio_push_to_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_push_to_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_push_to_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_push_to_buffers to i32), ptr @__kstrtab_iio_push_to_buffers, ptr @__kstrtabns_iio_push_to_buffers }, section "___ksymtab_gpl+iio_push_to_buffers", align 4
@__kstrtab_iio_push_to_buffers_with_ts_unaligned = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_push_to_buffers_with_ts_unaligned = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_push_to_buffers_with_ts_unaligned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_push_to_buffers_with_ts_unaligned to i32), ptr @__kstrtab_iio_push_to_buffers_with_ts_unaligned, ptr @__kstrtabns_iio_push_to_buffers_with_ts_unaligned }, section "___ksymtab_gpl+iio_push_to_buffers_with_ts_unaligned", align 4
@__kstrtab_iio_buffer_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_buffer_get = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_buffer_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_buffer_get to i32), ptr @__kstrtab_iio_buffer_get, ptr @__kstrtabns_iio_buffer_get }, section "___ksymtab_gpl+iio_buffer_get", align 4
@__kstrtab_iio_buffer_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_buffer_put = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_buffer_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_buffer_put to i32), ptr @__kstrtab_iio_buffer_put, ptr @__kstrtabns_iio_buffer_put }, section "___ksymtab_gpl+iio_buffer_put", align 4
@__kstrtab_iio_device_attach_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_iio_device_attach_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_iio_device_attach_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iio_device_attach_buffer to i32), ptr @__kstrtab_iio_device_attach_buffer, ptr @__kstrtabns_iio_device_attach_buffer }, section "___ksymtab_gpl+iio_device_attach_buffer", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@iio_buffer_attrs = internal unnamed_addr constant [5 x ptr] [ptr @dev_attr_length, ptr @dev_attr_enable, ptr @dev_attr_watermark, ptr @dev_attr_data_available, ptr @dev_attr_direction], align 4
@dev_attr_length_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @iio_buffer_read_length, ptr null }, align 4
@dev_attr_watermark_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @iio_buffer_show_watermark, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"buffer%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%s:%c%d/%dX%d>>%u\0A\00", align 1
@iio_endian_prefix = internal unnamed_addr constant [3 x ptr] [ptr null, ptr @.str.8, ptr @.str.9], align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"%s:%c%d/%d>>%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"drivers/iio/industrialio-buffer.c\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"Trying to set scanmask prior to registering buffer\0A\00", align 1
@dev_attr_length = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @iio_buffer_read_length, ptr @iio_buffer_write_length }, align 4
@dev_attr_enable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @iio_buffer_show_enable, ptr @iio_buffer_store_enable }, align 4
@dev_attr_watermark = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @iio_buffer_show_watermark, ptr @iio_buffer_store_watermark }, align 4
@dev_attr_data_available = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @iio_dma_show_data_available, ptr null }, align 4
@dev_attr_direction = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @direction_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"watermark\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"data_available\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"out\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"scan_elements\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"iio:buffer\00", align 1
@iio_buffer_chrdev_fileops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @iio_buffer_read, ptr @iio_buffer_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iio_buffer_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @iio_buffer_chrdev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_iio_buffer_get, ptr @__ksymtab_iio_buffer_init, ptr @__ksymtab_iio_buffer_put, ptr @__ksymtab_iio_device_attach_buffer, ptr @__ksymtab_iio_pop_from_buffer, ptr @__ksymtab_iio_push_to_buffers, ptr @__ksymtab_iio_push_to_buffers_with_ts_unaligned, ptr @__ksymtab_iio_update_buffers, ptr @__ksymtab_iio_validate_scan_mask_onehot], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_buffer_read_wrapper(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = tail call i32 @iio_buffer_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ -16, %4 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %12 = tail call ptr @llvm.thread.pointer() #11
  store i32 0, ptr %5, align 4
  store ptr %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @woken_wake_function, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.iio_dev, ptr %10, i32 0, i32 17
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %116, label %19

19:                                               ; preds = %4
  %20 = icmp eq ptr %9, null
  br i1 %20, label %116, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %116, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %116

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %116, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = udiv i32 %2, %33
  %42 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = call i32 @llvm.umin.i32(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i32 [ %44, %40 ], [ 0, %35 ]
  %47 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %47, ptr noundef nonnull %5) #11
  %48 = load ptr, ptr %16, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %114, label %50

50:                                               ; preds = %45
  %51 = udiv i32 %2, %33
  %52 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 15
  %53 = icmp ne i32 %46, 0
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %111, %50
  %56 = load volatile ptr, ptr %52, align 4
  %57 = icmp eq ptr %56, %52
  %58 = select i1 %57, i32 0, i32 %51
  %59 = select i1 %57, i32 %54, i32 %46
  %60 = load ptr, ptr %22, align 4
  %61 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef nonnull %9) #11
  %64 = icmp ugt i32 %59, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %55
  %66 = icmp eq i32 %59, 0
  %67 = icmp ugt i32 %58, %63
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %101

69:                                               ; preds = %65
  %70 = load ptr, ptr %16, align 8
  %71 = getelementptr inbounds %struct.iio_info, ptr %70, i32 0, i32 17
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %69
  %75 = sub i32 %58, %63
  %76 = call i32 %72(ptr noundef %10, i32 noundef %75) #11
  br label %101

77:                                               ; preds = %55
  %78 = icmp eq i32 %58, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %16, align 8
  %81 = getelementptr inbounds %struct.iio_info, ptr %80, i32 0, i32 17
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = sub i32 %59, %63
  %86 = call i32 %82(ptr noundef %10, i32 noundef %85) #11
  %87 = icmp sgt i32 %86, 0
  %88 = add i32 %86, %63
  %89 = icmp uge i32 %88, %59
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %101, label %91

91:                                               ; preds = %84, %79, %77
  %92 = load volatile i32, ptr %12, align 4
  %93 = and i32 %92, 256
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %114, !prof !8

95:                                               ; preds = %91
  %96 = load volatile i32, ptr %12, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = call i32 @wait_woken(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 2147483647) #11
  br label %111

101:                                              ; preds = %84, %74, %69, %65
  %102 = load ptr, ptr %22, align 4
  %103 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = call i32 %104(ptr noundef nonnull %9, i32 noundef %2, ptr noundef %1) #11
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i32, ptr %36, align 4
  %109 = and i32 %108, 2048
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %99
  %112 = load ptr, ptr %16, align 8
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %55

114:                                              ; preds = %111, %107, %101, %95, %91, %45
  %115 = phi i32 [ -19, %45 ], [ -11, %107 ], [ %105, %101 ], [ -512, %91 ], [ -512, %95 ], [ -19, %111 ]
  call void @remove_wait_queue(ptr noundef %47, ptr noundef nonnull %5) #11
  br label %116

116:                                              ; preds = %114, %31, %27, %21, %19, %4
  %117 = phi i32 [ %115, %114 ], [ -19, %4 ], [ -22, %21 ], [ -22, %19 ], [ -1, %27 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret i32 %117
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_buffer_write_wrapper(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = tail call i32 @iio_buffer_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %15

15:                                               ; preds = %13, %4
  %16 = phi i32 [ %14, %13 ], [ -16, %4 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 1
  %12 = tail call ptr @llvm.thread.pointer() #11
  store i32 0, ptr %5, align 4
  store ptr %12, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 2
  store ptr @woken_wake_function, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3
  store ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %5, i32 0, i32 3, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.iio_dev, ptr %10, i32 0, i32 17
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %78, label %19

19:                                               ; preds = %4
  %20 = icmp eq ptr %9, null
  br i1 %20, label %78, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %78, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %78

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.iio_buffer, ptr %9, i32 0, i32 7
  call void @add_wait_queue(ptr noundef %32, ptr noundef nonnull %5) #11
  %33 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %16, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %78, label %39

36:                                               ; preds = %63
  %37 = load ptr, ptr %16, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %71

39:                                               ; preds = %71, %31
  %40 = load ptr, ptr %22, align 4
  %41 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = call i32 %42(ptr noundef nonnull %9) #11
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %22, align 4
  br label %57

49:                                               ; preds = %44
  %50 = load volatile i32, ptr %12, align 4
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %74, !prof !8

53:                                               ; preds = %49
  %54 = load volatile i32, ptr %12, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %74

57:                                               ; preds = %47, %39
  %58 = phi ptr [ %48, %47 ], [ %40, %39 ]
  %59 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 %60(ptr noundef nonnull %9, i32 noundef %2, ptr noundef %1) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, ptr %33, align 4
  %65 = and i32 %64, 2048
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %36, label %74

67:                                               ; preds = %53
  %68 = call i32 @wait_woken(ptr noundef nonnull %5, i32 noundef 1, i32 noundef 2147483647) #11
  %69 = load ptr, ptr %16, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %67, %36
  br label %39

72:                                               ; preds = %57
  call void @remove_wait_queue(ptr noundef %32, ptr noundef nonnull %5) #11
  %73 = icmp slt i32 %61, 0
  br i1 %73, label %76, label %78

74:                                               ; preds = %63, %53, %49
  %75 = phi i32 [ -512, %53 ], [ -512, %49 ], [ -11, %63 ]
  call void @remove_wait_queue(ptr noundef %32, ptr noundef nonnull %5) #11
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %61, %72 ], [ %75, %74 ]
  br label %78

78:                                               ; preds = %76, %72, %67, %36, %31, %27, %21, %19, %4
  %79 = phi i32 [ -19, %4 ], [ -22, %21 ], [ -22, %19 ], [ -1, %27 ], [ %77, %76 ], [ %2, %72 ], [ -19, %31 ], [ -19, %67 ], [ -19, %36 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_buffer_poll_wrapper(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.iio_dev, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = icmp eq ptr %6, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %56, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 7
  %20 = icmp eq ptr %1, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %1, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void %22(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull %1) #11
  br label %25

25:                                               ; preds = %24, %21, %18
  %26 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %55 [
    i32 0, label %28
    i32 1, label %46
  ]

28:                                               ; preds = %25
  %29 = load ptr, ptr %13, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %56, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 15
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  %37 = icmp ne i32 %33, 0
  %38 = zext i1 %37 to i32
  %39 = select i1 %36, i32 %38, i32 %33
  %40 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef nonnull %6) #11
  %45 = icmp ugt i32 %39, %44
  br i1 %45, label %55, label %56

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = tail call i32 %50(ptr noundef nonnull %6) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52, %31, %25
  br label %56

56:                                               ; preds = %55, %52, %46, %31, %28, %11, %2
  %57 = phi i32 [ 0, %2 ], [ 0, %55 ], [ 0, %11 ], [ 260, %52 ], [ 65, %28 ], [ 65, %31 ], [ 260, %46 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %6, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %53, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 7
  %15 = icmp eq ptr %1, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 4
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %14, null
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void %17(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %1) #11
  br label %22

22:                                               ; preds = %21, %16, %13
  %23 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %52 [
    i32 0, label %25
    i32 1, label %43
  ]

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 15
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  %34 = icmp ne i32 %30, 0
  %35 = zext i1 %34 to i32
  %36 = select i1 %33, i32 %35, i32 %30
  %37 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef nonnull %6) #11
  %42 = icmp ugt i32 %36, %41
  br i1 %42, label %52, label %53

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.iio_buffer, ptr %6, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = tail call i32 %47(ptr noundef nonnull %6) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %28, %22
  br label %53

53:                                               ; preds = %52, %49, %43, %28, %25, %2
  %54 = phi i32 [ 0, %52 ], [ 0, %2 ], [ 260, %49 ], [ 65, %25 ], [ 65, %28 ], [ 260, %43 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_buffer_wakeup_poll(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.iio_buffer, ptr %11, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %12, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %13 = add nuw i32 %8, 1
  %14 = load i32, ptr %2, align 8
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %7, label %16

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_pop_from_buffer(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %14

14:                                               ; preds = %12, %8, %4, %2
  %15 = phi i32 [ %13, %12 ], [ -22, %8 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_buffer_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 6
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 6, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 15
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 15, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @iio_buffer_init.__key) #11
  %7 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 16
  store volatile i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_device_detach_buffers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  br label %7

7:                                                ; preds = %26, %5
  %8 = phi i32 [ 0, %5 ], [ %27, %26 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.iio_buffer, ptr %11, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #11, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #11, !srcloc !11
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %26, label %20, !prof !8

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef 3) #11
  br label %26

21:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %22 = getelementptr %struct.iio_buffer, ptr %11, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef nonnull %11) #11
  br label %26

26:                                               ; preds = %21, %20, %18, %7
  %27 = add nuw i32 %8, 1
  %28 = load i32, ptr %2, align 8
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %7, label %30

30:                                               ; preds = %26, %1
  %31 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_buffer_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #11, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #11, !srcloc !11
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %16, label %10, !prof !8

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #11
  br label %16

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %12 = getelementptr %struct.iio_buffer, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %13, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %11, %10, %8, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_update_buffers(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %40, label %11

11:                                               ; preds = %7, %5
  %12 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %13) #11
  br i1 %6, label %19, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 15
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  %18 = select i1 %17, ptr %1, ptr null
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi ptr [ null, %11 ], [ %18, %14 ]
  %21 = icmp eq ptr %2, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.iio_buffer, ptr %2, i32 0, i32 15
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  %26 = select i1 %25, ptr null, ptr %2
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi ptr [ null, %19 ], [ %26, %22 ]
  %29 = icmp ne ptr %20, null
  %30 = icmp ne ptr %28, null
  %31 = or i1 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call fastcc i32 @__iio_update_buffers(ptr noundef %0, ptr noundef %20, ptr noundef %28)
  br label %38

38:                                               ; preds = %36, %32, %27
  %39 = phi i32 [ %37, %36 ], [ 0, %27 ], [ -19, %32 ]
  tail call void @mutex_unlock(ptr noundef %13) #11
  tail call void @mutex_unlock(ptr noundef %12) #11
  br label %40

40:                                               ; preds = %38, %7, %3
  %41 = phi i32 [ %39, %38 ], [ 0, %3 ], [ -22, %7 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__iio_update_buffers(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @_find_first_bit_le(ptr noundef %9, i32 noundef %7) #11
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %585, label %22

12:                                               ; preds = %3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %16, %20
  br i1 %21, label %181, label %22

22:                                               ; preds = %18, %14, %12, %5
  %23 = load i32, ptr %0, align 8
  %24 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %49, label %27

27:                                               ; preds = %43, %22
  %28 = phi i32 [ %44, %43 ], [ -1, %22 ]
  %29 = phi i32 [ %45, %43 ], [ -1, %22 ]
  %30 = phi ptr [ %47, %43 ], [ %25, %22 ]
  %31 = phi i32 [ %46, %43 ], [ %23, %22 ]
  %32 = getelementptr i8, ptr %30, i32 -96
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = getelementptr i8, ptr %30, i32 -80
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %36, i32 0, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %31
  %40 = getelementptr i8, ptr %30, i32 -52
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %29, i32 %41) #11
  br label %43

43:                                               ; preds = %34, %27
  %44 = phi i32 [ %28, %27 ], [ %42, %34 ]
  %45 = phi i32 [ %29, %27 ], [ %42, %34 ]
  %46 = phi i32 [ %31, %27 ], [ %39, %34 ]
  %47 = load ptr, ptr %30, align 4
  %48 = icmp eq ptr %47, %24
  br i1 %48, label %49, label %27

49:                                               ; preds = %43, %22
  %50 = phi i32 [ -1, %22 ], [ %44, %43 ]
  %51 = phi i32 [ -1, %22 ], [ %45, %43 ]
  %52 = phi i32 [ %23, %22 ], [ %46, %43 ]
  br i1 %4, label %62, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %55, i32 0, i32 12
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %52
  %59 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 8
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %51, i32 %60) #11
  br label %62

62:                                               ; preds = %53, %49
  %63 = phi i32 [ %50, %49 ], [ %61, %53 ]
  %64 = phi i32 [ %52, %49 ], [ %58, %53 ]
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %67, %62
  %72 = and i32 %64, 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  br i1 %4, label %81, label %75

75:                                               ; preds = %74
  %76 = load volatile ptr, ptr %24, align 4
  %77 = icmp eq ptr %76, %24
  br i1 %77, label %81, label %585

78:                                               ; preds = %71
  %79 = and i32 %64, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %585, label %81

81:                                               ; preds = %78, %75, %74, %67
  %82 = phi i32 [ 2, %67 ], [ 8, %75 ], [ 8, %74 ], [ 4, %78 ]
  %83 = phi i1 [ false, %67 ], [ true, %75 ], [ true, %74 ], [ false, %78 ]
  %84 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %85 = load i32, ptr %84, align 8
  %86 = tail call ptr @bitmap_zalloc(i32 noundef %85, i32 noundef 3264) #11
  %87 = icmp eq ptr %86, null
  br i1 %87, label %585, label %88

88:                                               ; preds = %81
  %89 = load ptr, ptr %24, align 4
  %90 = icmp eq ptr %89, %24
  br i1 %90, label %110, label %91

91:                                               ; preds = %106, %88
  %92 = phi ptr [ %108, %106 ], [ %89, %88 ]
  %93 = phi i1 [ %107, %106 ], [ false, %88 ]
  %94 = getelementptr i8, ptr %92, i32 -96
  %95 = icmp eq ptr %94, %2
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %84, align 8
  %98 = getelementptr i8, ptr %92, i32 -76
  %99 = load ptr, ptr %98, align 4
  tail call void @__bitmap_or(ptr noundef nonnull %86, ptr noundef nonnull %86, ptr noundef %99, i32 noundef %97) #11
  %100 = getelementptr i8, ptr %92, i32 -48
  %101 = load i8, ptr %100, align 4, !range !13
  %102 = zext i8 %101 to i32
  %103 = zext i1 %93 to i32
  %104 = or i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %96, %91
  %107 = phi i1 [ %93, %91 ], [ %105, %96 ]
  %108 = load ptr, ptr %92, align 4
  %109 = icmp eq ptr %108, %24
  br i1 %109, label %110, label %91

110:                                              ; preds = %106, %88
  %111 = phi i1 [ false, %88 ], [ %107, %106 ]
  br i1 %4, label %122, label %112

112:                                              ; preds = %110
  %113 = load i32, ptr %84, align 8
  %114 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  tail call void @__bitmap_or(ptr noundef nonnull %86, ptr noundef nonnull %86, ptr noundef %115, i32 noundef %113) #11
  %116 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 9
  %117 = load i8, ptr %116, align 4, !range !13
  %118 = zext i8 %117 to i32
  %119 = zext i1 %111 to i32
  %120 = or i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %112, %110
  %123 = phi i1 [ %121, %112 ], [ %111, %110 ]
  %124 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 6
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %152, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %84, align 8
  %129 = tail call i32 @_find_first_bit_le(ptr noundef nonnull %86, i32 noundef %128) #11
  %130 = icmp eq i32 %129, %128
  br i1 %130, label %149, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %125, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %149, label %134

134:                                              ; preds = %131
  %135 = add i32 %128, 31
  %136 = lshr i32 %135, 5
  br label %137

137:                                              ; preds = %145, %134
  %138 = phi ptr [ %125, %134 ], [ %146, %145 ]
  br i1 %83, label %139, label %142

139:                                              ; preds = %137
  %140 = tail call i32 @__bitmap_equal(ptr noundef nonnull %86, ptr noundef %138, i32 noundef %128) #11
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %150

142:                                              ; preds = %137
  %143 = tail call i32 @__bitmap_subset(ptr noundef nonnull %86, ptr noundef %138, i32 noundef %128) #11
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142, %139
  %146 = getelementptr i32, ptr %138, i32 %136
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %137

149:                                              ; preds = %145, %131, %127
  tail call void @bitmap_free(ptr noundef nonnull %86) #11
  br label %585

150:                                              ; preds = %142, %139
  tail call void @bitmap_free(ptr noundef nonnull %86) #11
  %151 = icmp eq ptr %138, null
  br i1 %151, label %585, label %152

152:                                              ; preds = %150, %122
  %153 = phi ptr [ %138, %150 ], [ %86, %122 ]
  %154 = tail call fastcc i32 @iio_compute_scan_bytes(ptr noundef %0, ptr noundef %153, i1 noundef zeroext %123) #11
  br i1 %4, label %181, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 4
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %157, i32 0, i32 7
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %173, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 5
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 9
  %165 = load i8, ptr %164, align 4, !range !13
  %166 = icmp ne i8 %165, 0
  %167 = tail call fastcc i32 @iio_compute_scan_bytes(ptr noundef %0, ptr noundef %163, i1 noundef zeroext %166) #11
  %168 = load ptr, ptr %156, align 4
  %169 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %168, i32 0, i32 7
  %170 = load ptr, ptr %169, align 4
  %171 = tail call i32 %170(ptr noundef nonnull %1, i32 noundef %167) #11
  %172 = load ptr, ptr %156, align 4
  br label %173

173:                                              ; preds = %161, %155
  %174 = phi ptr [ %157, %155 ], [ %172, %161 ]
  %175 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %174, i32 0, i32 6
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %173
  %179 = tail call i32 %176(ptr noundef nonnull %1) #11
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %578

181:                                              ; preds = %178, %173, %152, %18
  %182 = phi i1 [ %123, %152 ], [ false, %18 ], [ %123, %173 ], [ %123, %178 ]
  %183 = phi i32 [ %154, %152 ], [ 0, %18 ], [ %154, %173 ], [ %154, %178 ]
  %184 = phi ptr [ %153, %152 ], [ null, %18 ], [ %153, %173 ], [ %153, %178 ]
  %185 = phi i32 [ %63, %152 ], [ -1, %18 ], [ %63, %173 ], [ %63, %178 ]
  %186 = phi i32 [ %82, %152 ], [ 0, %18 ], [ %82, %173 ], [ %82, %178 ]
  %187 = zext i1 %182 to i8
  %188 = tail call fastcc i32 @iio_disable_buffers(ptr noundef %0)
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %549

190:                                              ; preds = %181
  %191 = icmp eq ptr %2, null
  br i1 %191, label %211, label %192

192:                                              ; preds = %190
  %193 = getelementptr inbounds %struct.iio_buffer, ptr %2, i32 0, i32 15
  %194 = getelementptr inbounds %struct.iio_buffer, ptr %2, i32 0, i32 15, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %193, align 4
  %197 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %195, ptr %197, align 4
  store volatile ptr %196, ptr %195, align 4
  store volatile ptr %193, ptr %193, align 4
  store ptr %193, ptr %194, align 4
  %198 = getelementptr inbounds %struct.iio_buffer, ptr %2, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %198, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %199 = getelementptr inbounds %struct.iio_buffer, ptr %2, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %199) #11, !srcloc !10
  %200 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %199, ptr %199, i32 1, ptr elementtype(i32) %199) #11, !srcloc !11
  %201 = extractvalue { i32, i32, i32 } %200, 0
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %206, label %203

203:                                              ; preds = %192
  %204 = icmp sgt i32 %201, 0
  br i1 %204, label %211, label %205, !prof !8

205:                                              ; preds = %203
  tail call void @refcount_warn_saturate(ptr noundef %199, i32 noundef 3) #11
  br label %211

206:                                              ; preds = %192
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %207 = getelementptr %struct.iio_buffer, ptr %2, i32 0, i32 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %208, i32 0, i32 11
  %210 = load ptr, ptr %209, align 4
  tail call void %210(ptr noundef nonnull %2) #11
  br label %211

211:                                              ; preds = %206, %205, %203, %190
  br i1 %4, label %229, label %212

212:                                              ; preds = %211
  %213 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %213) #11, !srcloc !10
  %214 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %213, ptr %213, i32 1, ptr elementtype(i32) %213) #11, !srcloc !14
  %215 = extractvalue { i32, i32, i32 } %214, 0
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217, !prof !15

217:                                              ; preds = %212
  %218 = add i32 %215, 1
  %219 = or i32 %218, %215
  %220 = icmp sgt i32 %219, -1
  br i1 %220, label %223, label %221, !prof !8

221:                                              ; preds = %217, %212
  %222 = phi i32 [ 2, %212 ], [ 1, %217 ]
  tail call void @refcount_warn_saturate(ptr noundef %213, i32 noundef %222) #11
  br label %223

223:                                              ; preds = %221, %217
  %224 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 15
  %225 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.list_head, ptr %226, i32 0, i32 1
  store ptr %224, ptr %227, align 4
  store ptr %226, ptr %224, align 4
  %228 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 15, i32 1
  store ptr %225, ptr %228, align 4
  store volatile ptr %224, ptr %225, align 4
  br label %229

229:                                              ; preds = %223, %211
  %230 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  %231 = load volatile ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, %230
  br i1 %232, label %585, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 8
  store ptr %184, ptr %234, align 4
  %235 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 9
  store i8 %187, ptr %235, align 8
  %236 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 4
  store i32 %183, ptr %236, align 4
  %237 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  store i32 %186, ptr %237, align 4
  %238 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %239 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 19
  br label %240

240:                                              ; preds = %410, %233
  %241 = phi ptr [ %231, %233 ], [ %411, %410 ]
  %242 = getelementptr i8, ptr %241, i32 -72
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, %242
  br i1 %244, label %253, label %245

245:                                              ; preds = %245, %240
  %246 = phi ptr [ %248, %245 ], [ %243, %240 ]
  %247 = getelementptr i8, ptr %246, i32 -12
  %248 = load ptr, ptr %246, align 4
  %249 = getelementptr inbounds %struct.list_head, ptr %246, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.list_head, ptr %248, i32 0, i32 1
  store ptr %250, ptr %251, align 4
  store volatile ptr %248, ptr %250, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %246, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %249, align 4
  tail call void @kfree(ptr noundef %247) #11
  %252 = icmp eq ptr %248, %242
  br i1 %252, label %253, label %245

253:                                              ; preds = %245, %240
  %254 = getelementptr i8, ptr %241, i32 -12
  %255 = load ptr, ptr %254, align 4
  tail call void @kfree(ptr noundef %255) #11
  store ptr null, ptr %254, align 4
  %256 = load ptr, ptr %234, align 4
  %257 = getelementptr i8, ptr %241, i32 -76
  %258 = load ptr, ptr %257, align 4
  %259 = load i32, ptr %238, align 8
  %260 = tail call i32 @__bitmap_equal(ptr noundef %256, ptr noundef %258, i32 noundef %259) #11
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %410

262:                                              ; preds = %253
  %263 = load ptr, ptr %257, align 4
  %264 = load i32, ptr %238, align 8
  %265 = tail call i32 @_find_next_bit_le(ptr noundef %263, i32 noundef %264, i32 noundef 0) #11
  %266 = load i32, ptr %238, align 8
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %268, label %357

268:                                              ; preds = %262
  %269 = getelementptr i8, ptr %241, i32 -68
  br label %270

270:                                              ; preds = %347, %268
  %271 = phi i32 [ %266, %268 ], [ %355, %347 ]
  %272 = phi i32 [ -1, %268 ], [ %273, %347 ]
  %273 = phi i32 [ %265, %268 ], [ %354, %347 ]
  %274 = phi i32 [ 0, %268 ], [ %350, %347 ]
  %275 = phi i32 [ 0, %268 ], [ %349, %347 ]
  %276 = phi ptr [ null, %268 ], [ %348, %347 ]
  %277 = load ptr, ptr %234, align 4
  %278 = add i32 %272, 1
  %279 = tail call i32 @_find_next_bit_le(ptr noundef %277, i32 noundef %271, i32 noundef %278) #11
  %280 = icmp eq i32 %279, %273
  br i1 %280, label %304, label %281

281:                                              ; preds = %281, %270
  %282 = phi i32 [ %302, %281 ], [ %279, %270 ]
  %283 = phi i32 [ %298, %281 ], [ %274, %270 ]
  %284 = tail call ptr @iio_find_channel_from_si(ptr noundef %0, i32 noundef %282) #11
  %285 = getelementptr inbounds %struct.iio_chan_spec, ptr %284, i32 0, i32 5, i32 2
  %286 = load i8, ptr %285, align 2
  %287 = lshr i8 %286, 3
  %288 = zext i8 %287 to i32
  %289 = getelementptr inbounds %struct.iio_chan_spec, ptr %284, i32 0, i32 5, i32 4
  %290 = load i8, ptr %289, align 4
  %291 = tail call i8 @llvm.umax.i8(i8 %290, i8 1) #11
  %292 = zext i8 %291 to i32
  %293 = mul nuw nsw i32 %292, %288
  %294 = add i32 %283, -1
  %295 = add i32 %294, %293
  %296 = urem i32 %295, %293
  %297 = sub nsw i32 %293, %296
  %298 = add i32 %297, %295
  %299 = load ptr, ptr %234, align 4
  %300 = load i32, ptr %238, align 8
  %301 = add i32 %282, 1
  %302 = tail call i32 @_find_next_bit_le(ptr noundef %299, i32 noundef %300, i32 noundef %301) #11
  %303 = icmp eq i32 %302, %273
  br i1 %303, label %304, label %281

304:                                              ; preds = %281, %270
  %305 = phi i32 [ %274, %270 ], [ %298, %281 ]
  %306 = tail call ptr @iio_find_channel_from_si(ptr noundef %0, i32 noundef %273) #11
  %307 = getelementptr inbounds %struct.iio_chan_spec, ptr %306, i32 0, i32 5, i32 2
  %308 = load i8, ptr %307, align 2
  %309 = lshr i8 %308, 3
  %310 = zext i8 %309 to i32
  %311 = getelementptr inbounds %struct.iio_chan_spec, ptr %306, i32 0, i32 5, i32 4
  %312 = load i8, ptr %311, align 4
  %313 = tail call i8 @llvm.umax.i8(i8 %312, i8 1) #11
  %314 = zext i8 %313 to i32
  %315 = mul nuw nsw i32 %314, %310
  %316 = add nsw i32 %315, -1
  %317 = add i32 %316, %275
  %318 = urem i32 %317, %315
  %319 = sub i32 %317, %318
  %320 = add i32 %316, %305
  %321 = urem i32 %320, %315
  %322 = sub i32 %320, %321
  %323 = icmp eq ptr %276, null
  br i1 %323, label %337, label %324

324:                                              ; preds = %304
  %325 = load i32, ptr %276, align 4
  %326 = getelementptr inbounds %struct.iio_demux_table, ptr %276, i32 0, i32 2
  %327 = load i32, ptr %326, align 4
  %328 = add i32 %327, %325
  %329 = icmp eq i32 %328, %322
  br i1 %329, label %330, label %337

330:                                              ; preds = %324
  %331 = getelementptr inbounds %struct.iio_demux_table, ptr %276, i32 0, i32 1
  %332 = load i32, ptr %331, align 4
  %333 = add i32 %332, %327
  %334 = icmp eq i32 %333, %319
  br i1 %334, label %335, label %337

335:                                              ; preds = %330
  %336 = add i32 %327, %315
  store i32 %336, ptr %326, align 4
  br label %347

337:                                              ; preds = %330, %324, %304
  %338 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %339 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %338, i32 noundef 3264, i32 noundef 20) #12
  %340 = icmp eq ptr %339, null
  br i1 %340, label %417, label %341

341:                                              ; preds = %337
  store i32 %322, ptr %339, align 8
  %342 = getelementptr inbounds %struct.iio_demux_table, ptr %339, i32 0, i32 1
  store i32 %319, ptr %342, align 4
  %343 = getelementptr inbounds %struct.iio_demux_table, ptr %339, i32 0, i32 2
  store i32 %315, ptr %343, align 8
  %344 = getelementptr inbounds %struct.iio_demux_table, ptr %339, i32 0, i32 3
  %345 = load ptr, ptr %269, align 4
  store ptr %344, ptr %269, align 4
  store ptr %242, ptr %344, align 4
  %346 = getelementptr inbounds %struct.iio_demux_table, ptr %339, i32 0, i32 3, i32 1
  store ptr %345, ptr %346, align 8
  store volatile ptr %344, ptr %345, align 4
  br label %347

347:                                              ; preds = %341, %335
  %348 = phi ptr [ %276, %335 ], [ %339, %341 ]
  %349 = add i32 %319, %315
  %350 = add i32 %322, %315
  %351 = load ptr, ptr %257, align 4
  %352 = load i32, ptr %238, align 8
  %353 = add i32 %273, 1
  %354 = tail call i32 @_find_next_bit_le(ptr noundef %351, i32 noundef %352, i32 noundef %353) #11
  %355 = load i32, ptr %238, align 8
  %356 = icmp ult i32 %354, %355
  br i1 %356, label %270, label %357

357:                                              ; preds = %347, %262
  %358 = phi ptr [ null, %262 ], [ %348, %347 ]
  %359 = phi i32 [ 0, %262 ], [ %349, %347 ]
  %360 = phi i32 [ 0, %262 ], [ %350, %347 ]
  %361 = getelementptr i8, ptr %241, i32 -48
  %362 = load i8, ptr %361, align 4, !range !13
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %413, label %364

364:                                              ; preds = %357
  %365 = load i32, ptr %239, align 4
  %366 = tail call ptr @iio_find_channel_from_si(ptr noundef %0, i32 noundef %365) #11
  %367 = getelementptr inbounds %struct.iio_chan_spec, ptr %366, i32 0, i32 5, i32 2
  %368 = load i8, ptr %367, align 2
  %369 = lshr i8 %368, 3
  %370 = zext i8 %369 to i32
  %371 = getelementptr inbounds %struct.iio_chan_spec, ptr %366, i32 0, i32 5, i32 4
  %372 = load i8, ptr %371, align 4
  %373 = tail call i8 @llvm.umax.i8(i8 %372, i8 1) #11
  %374 = zext i8 %373 to i32
  %375 = mul nuw nsw i32 %374, %370
  %376 = add nsw i32 %375, -1
  %377 = add i32 %376, %359
  %378 = urem i32 %377, %375
  %379 = sub i32 %377, %378
  %380 = add i32 %376, %360
  %381 = urem i32 %380, %375
  %382 = sub i32 %380, %381
  %383 = icmp eq ptr %358, null
  br i1 %383, label %397, label %384

384:                                              ; preds = %364
  %385 = load i32, ptr %358, align 4
  %386 = getelementptr inbounds %struct.iio_demux_table, ptr %358, i32 0, i32 2
  %387 = load i32, ptr %386, align 4
  %388 = add i32 %387, %385
  %389 = icmp eq i32 %388, %382
  br i1 %389, label %390, label %397

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.iio_demux_table, ptr %358, i32 0, i32 1
  %392 = load i32, ptr %391, align 4
  %393 = add i32 %392, %387
  %394 = icmp eq i32 %393, %379
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = add i32 %387, %375
  store i32 %396, ptr %386, align 4
  br label %408

397:                                              ; preds = %390, %384, %364
  %398 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %399 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %398, i32 noundef 3264, i32 noundef 20) #12
  %400 = icmp eq ptr %399, null
  br i1 %400, label %417, label %401

401:                                              ; preds = %397
  store i32 %382, ptr %399, align 8
  %402 = getelementptr inbounds %struct.iio_demux_table, ptr %399, i32 0, i32 1
  store i32 %379, ptr %402, align 4
  %403 = getelementptr inbounds %struct.iio_demux_table, ptr %399, i32 0, i32 2
  store i32 %375, ptr %403, align 8
  %404 = getelementptr inbounds %struct.iio_demux_table, ptr %399, i32 0, i32 3
  %405 = getelementptr i8, ptr %241, i32 -68
  %406 = load ptr, ptr %405, align 4
  store ptr %404, ptr %405, align 4
  store ptr %242, ptr %404, align 4
  %407 = getelementptr inbounds %struct.iio_demux_table, ptr %399, i32 0, i32 3, i32 1
  store ptr %406, ptr %407, align 8
  store volatile ptr %404, ptr %406, align 4
  br label %408

408:                                              ; preds = %401, %395
  %409 = add i32 %379, %375
  br label %413

410:                                              ; preds = %413, %253
  %411 = load ptr, ptr %241, align 4
  %412 = icmp eq ptr %411, %230
  br i1 %412, label %447, label %240

413:                                              ; preds = %408, %357
  %414 = phi i32 [ %409, %408 ], [ %359, %357 ]
  %415 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %414, i32 noundef 3520) #13
  store ptr %415, ptr %254, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %410

417:                                              ; preds = %413, %397, %337
  %418 = load ptr, ptr %242, align 4
  %419 = icmp eq ptr %418, %242
  br i1 %419, label %428, label %420

420:                                              ; preds = %420, %417
  %421 = phi ptr [ %423, %420 ], [ %418, %417 ]
  %422 = getelementptr i8, ptr %421, i32 -12
  %423 = load ptr, ptr %421, align 4
  %424 = getelementptr inbounds %struct.list_head, ptr %421, i32 0, i32 1
  %425 = load ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.list_head, ptr %423, i32 0, i32 1
  store ptr %425, ptr %426, align 4
  store volatile ptr %423, ptr %425, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %421, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %424, align 4
  tail call void @kfree(ptr noundef %422) #11
  %427 = icmp eq ptr %423, %242
  br i1 %427, label %428, label %420

428:                                              ; preds = %420, %417
  %429 = load ptr, ptr %230, align 4
  %430 = icmp eq ptr %429, %230
  br i1 %430, label %447, label %431

431:                                              ; preds = %444, %428
  %432 = phi ptr [ %445, %444 ], [ %429, %428 ]
  %433 = getelementptr i8, ptr %432, i32 -72
  %434 = load ptr, ptr %433, align 4
  %435 = icmp eq ptr %434, %433
  br i1 %435, label %444, label %436

436:                                              ; preds = %436, %431
  %437 = phi ptr [ %439, %436 ], [ %434, %431 ]
  %438 = getelementptr i8, ptr %437, i32 -12
  %439 = load ptr, ptr %437, align 4
  %440 = getelementptr inbounds %struct.list_head, ptr %437, i32 0, i32 1
  %441 = load ptr, ptr %440, align 4
  %442 = getelementptr inbounds %struct.list_head, ptr %439, i32 0, i32 1
  store ptr %441, ptr %442, align 4
  store volatile ptr %439, ptr %441, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %437, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %440, align 4
  tail call void @kfree(ptr noundef %438) #11
  %443 = icmp eq ptr %439, %433
  br i1 %443, label %444, label %436

444:                                              ; preds = %436, %431
  %445 = load ptr, ptr %432, align 4
  %446 = icmp eq ptr %445, %230
  br i1 %446, label %447, label %431

447:                                              ; preds = %444, %428, %410
  %448 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 18
  %449 = load ptr, ptr %448, align 4
  %450 = load ptr, ptr %449, align 4
  %451 = icmp eq ptr %450, null
  br i1 %451, label %456, label %452

452:                                              ; preds = %447
  %453 = tail call i32 %450(ptr noundef %0) #11
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %452
  store i32 1, ptr %237, align 4
  store ptr null, ptr %234, align 4
  br label %549

456:                                              ; preds = %452, %447
  %457 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 17
  %458 = load ptr, ptr %457, align 8
  %459 = getelementptr inbounds %struct.iio_info, ptr %458, i32 0, i32 13
  %460 = load ptr, ptr %459, align 4
  %461 = icmp eq ptr %460, null
  br i1 %461, label %468, label %462

462:                                              ; preds = %456
  %463 = load ptr, ptr %234, align 4
  %464 = tail call i32 %460(ptr noundef %0, ptr noundef %463) #11
  %465 = icmp slt i32 %464, 0
  br i1 %465, label %539, label %466

466:                                              ; preds = %462
  %467 = load ptr, ptr %457, align 8
  br label %468

468:                                              ; preds = %466, %456
  %469 = phi ptr [ %467, %466 ], [ %458, %456 ]
  %470 = getelementptr inbounds %struct.iio_info, ptr %469, i32 0, i32 16
  %471 = load ptr, ptr %470, align 4
  %472 = icmp eq ptr %471, null
  br i1 %472, label %475, label %473

473:                                              ; preds = %468
  %474 = tail call i32 %471(ptr noundef %0, i32 noundef %185) #11
  br label %475

475:                                              ; preds = %473, %468
  br label %476

476:                                              ; preds = %489, %475
  %477 = phi ptr [ %478, %489 ], [ %230, %475 ]
  %478 = load ptr, ptr %477, align 4
  %479 = icmp eq ptr %478, %230
  br i1 %479, label %492, label %480

480:                                              ; preds = %476
  %481 = getelementptr i8, ptr %478, i32 -80
  %482 = load ptr, ptr %481, align 4
  %483 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %482, i32 0, i32 9
  %484 = load ptr, ptr %483, align 4
  %485 = icmp eq ptr %484, null
  br i1 %485, label %489, label %486

486:                                              ; preds = %480
  %487 = getelementptr i8, ptr %478, i32 -96
  %488 = tail call i32 %484(ptr noundef %487, ptr noundef %0) #11
  br label %489

489:                                              ; preds = %486, %480
  %490 = phi i32 [ %488, %486 ], [ 0, %480 ]
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %476, label %519

492:                                              ; preds = %476
  %493 = load i32, ptr %237, align 4
  %494 = icmp eq i32 %493, 2
  br i1 %494, label %495, label %502

495:                                              ; preds = %492
  %496 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %497 = load ptr, ptr %496, align 4
  %498 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 11
  %499 = load ptr, ptr %498, align 8
  %500 = tail call i32 @iio_trigger_attach_poll_func(ptr noundef %497, ptr noundef %499) #11
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %519

502:                                              ; preds = %495, %492
  %503 = load ptr, ptr %448, align 4
  %504 = getelementptr inbounds %struct.iio_buffer_setup_ops, ptr %503, i32 0, i32 1
  %505 = load ptr, ptr %504, align 4
  %506 = icmp eq ptr %505, null
  br i1 %506, label %585, label %507

507:                                              ; preds = %502
  %508 = tail call i32 %505(ptr noundef %0) #11
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %585, label %510

510:                                              ; preds = %507
  %511 = load i32, ptr %237, align 4
  %512 = icmp eq i32 %511, 2
  br i1 %512, label %513, label %519

513:                                              ; preds = %510
  %514 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %515 = load ptr, ptr %514, align 4
  %516 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 11
  %517 = load ptr, ptr %516, align 8
  %518 = tail call i32 @iio_trigger_detach_poll_func(ptr noundef %515, ptr noundef %517) #11
  br label %519

519:                                              ; preds = %513, %510, %495, %489
  %520 = phi ptr [ %230, %495 ], [ %230, %513 ], [ %230, %510 ], [ %478, %489 ]
  %521 = phi i32 [ %500, %495 ], [ %508, %513 ], [ %508, %510 ], [ %490, %489 ]
  %522 = getelementptr inbounds %struct.list_head, ptr %520, i32 0, i32 1
  %523 = load ptr, ptr %522, align 4
  %524 = icmp eq ptr %523, %230
  br i1 %524, label %539, label %525

525:                                              ; preds = %535, %519
  %526 = phi ptr [ %537, %535 ], [ %523, %519 ]
  %527 = getelementptr i8, ptr %526, i32 -80
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %528, i32 0, i32 10
  %530 = load ptr, ptr %529, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %535, label %532

532:                                              ; preds = %525
  %533 = getelementptr i8, ptr %526, i32 -96
  %534 = tail call i32 %530(ptr noundef %533, ptr noundef %0) #11
  br label %535

535:                                              ; preds = %532, %525
  %536 = getelementptr inbounds %struct.list_head, ptr %526, i32 0, i32 1
  %537 = load ptr, ptr %536, align 4
  %538 = icmp eq ptr %537, %230
  br i1 %538, label %539, label %525

539:                                              ; preds = %535, %519, %462
  %540 = phi i32 [ %464, %462 ], [ %521, %519 ], [ %521, %535 ]
  %541 = load ptr, ptr %448, align 4
  %542 = getelementptr inbounds %struct.iio_buffer_setup_ops, ptr %541, i32 0, i32 3
  %543 = load ptr, ptr %542, align 4
  %544 = icmp eq ptr %543, null
  br i1 %544, label %547, label %545

545:                                              ; preds = %539
  %546 = tail call i32 %543(ptr noundef %0) #11
  br label %547

547:                                              ; preds = %545, %539
  store i32 1, ptr %237, align 4
  store ptr null, ptr %234, align 4
  %548 = icmp eq i32 %540, 0
  br i1 %548, label %585, label %549

549:                                              ; preds = %547, %455, %181
  %550 = phi i32 [ %188, %181 ], [ %540, %547 ], [ %453, %455 ]
  %551 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  %552 = load ptr, ptr %551, align 8
  %553 = icmp eq ptr %552, %551
  br i1 %553, label %578, label %554

554:                                              ; preds = %576, %549
  %555 = phi ptr [ %557, %576 ], [ %552, %549 ]
  %556 = getelementptr i8, ptr %555, i32 -96
  %557 = load ptr, ptr %555, align 4
  %558 = getelementptr i8, ptr %555, i32 4
  %559 = load ptr, ptr %558, align 4
  %560 = getelementptr inbounds %struct.list_head, ptr %557, i32 0, i32 1
  store ptr %559, ptr %560, align 4
  store volatile ptr %557, ptr %559, align 4
  store volatile ptr %555, ptr %555, align 4
  store ptr %555, ptr %558, align 4
  %561 = getelementptr i8, ptr %555, i32 -64
  tail call void @__wake_up(ptr noundef %561, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %562 = icmp eq ptr %556, null
  br i1 %562, label %576, label %563

563:                                              ; preds = %554
  %564 = getelementptr i8, ptr %555, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %564) #11, !srcloc !10
  %565 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %564, ptr %564, i32 1, ptr elementtype(i32) %564) #11, !srcloc !11
  %566 = extractvalue { i32, i32, i32 } %565, 0
  %567 = icmp eq i32 %566, 1
  br i1 %567, label %571, label %568

568:                                              ; preds = %563
  %569 = icmp sgt i32 %566, 0
  br i1 %569, label %576, label %570, !prof !8

570:                                              ; preds = %568
  tail call void @refcount_warn_saturate(ptr noundef %564, i32 noundef 3) #11
  br label %576

571:                                              ; preds = %563
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %572 = getelementptr i8, ptr %555, i32 -80
  %573 = load ptr, ptr %572, align 4
  %574 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %573, i32 0, i32 11
  %575 = load ptr, ptr %574, align 4
  tail call void %575(ptr noundef nonnull %556) #11
  br label %576

576:                                              ; preds = %571, %570, %568, %554
  %577 = icmp eq ptr %557, %551
  br i1 %577, label %578, label %554

578:                                              ; preds = %576, %549, %178
  %579 = phi ptr [ %153, %178 ], [ %184, %549 ], [ %184, %576 ]
  %580 = phi i32 [ %179, %178 ], [ %550, %549 ], [ %550, %576 ]
  %581 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 6
  %582 = load ptr, ptr %581, align 4
  %583 = icmp eq ptr %582, null
  br i1 %583, label %584, label %585

584:                                              ; preds = %578
  tail call void @bitmap_free(ptr noundef %579) #11
  br label %585

585:                                              ; preds = %584, %578, %547, %507, %502, %229, %150, %149, %81, %78, %75, %5
  %586 = phi i32 [ 0, %229 ], [ 0, %547 ], [ %580, %578 ], [ %580, %584 ], [ -22, %149 ], [ -22, %150 ], [ -12, %81 ], [ -22, %78 ], [ -22, %75 ], [ -22, %5 ], [ 0, %507 ], [ 0, %502 ]
  ret i32 %586
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_disable_all_buffers(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @iio_disable_buffers(ptr noundef %0)
  %3 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %30, label %6

6:                                                ; preds = %28, %1
  %7 = phi ptr [ %9, %28 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -96
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr i8, ptr %7, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %9, ptr %11, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %10, align 4
  %13 = getelementptr i8, ptr %7, i32 -64
  tail call void @__wake_up(ptr noundef %13, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  %14 = icmp eq ptr %8, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %6
  %16 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #11, !srcloc !10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #11, !srcloc !11
  %18 = extractvalue { i32, i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %28, label %22, !prof !8

22:                                               ; preds = %20
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #11
  br label %28

23:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %24 = getelementptr i8, ptr %7, i32 -80
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %25, i32 0, i32 11
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef nonnull %8) #11
  br label %28

28:                                               ; preds = %23, %22, %20, %6
  %29 = icmp eq ptr %9, %3
  br i1 %29, label %30, label %6

30:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iio_disable_buffers(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %67, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iio_buffer_setup_ops, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef %0) #11
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ 0, %5 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @iio_trigger_detach_poll_func(ptr noundef %20, ptr noundef %22) #11
  br label %24

24:                                               ; preds = %18, %13
  %25 = load ptr, ptr %2, align 4
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %46, label %27

27:                                               ; preds = %38, %24
  %28 = phi ptr [ %44, %38 ], [ %25, %24 ]
  %29 = phi i32 [ %43, %38 ], [ %14, %24 ]
  %30 = getelementptr i8, ptr %28, i32 -80
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %31, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = getelementptr i8, ptr %28, i32 -96
  %37 = tail call i32 %33(ptr noundef %36, ptr noundef %0) #11
  br label %38

38:                                               ; preds = %35, %27
  %39 = phi i32 [ %37, %35 ], [ 0, %27 ]
  %40 = icmp eq i32 %39, 0
  %41 = icmp ne i32 %29, 0
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, i32 %29, i32 %39
  %44 = load ptr, ptr %28, align 4
  %45 = icmp eq ptr %44, %2
  br i1 %45, label %46, label %27

46:                                               ; preds = %38, %24
  %47 = phi i32 [ %14, %24 ], [ %43, %38 ]
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.iio_buffer_setup_ops, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = tail call i32 %50(ptr noundef %0) #11
  %54 = icmp eq i32 %53, 0
  %55 = icmp ne i32 %47, 0
  %56 = select i1 %54, i1 true, i1 %55
  %57 = select i1 %56, i32 %47, i32 %53
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i32 [ %47, %46 ], [ %57, %52 ]
  %60 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 8
  %61 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load ptr, ptr %60, align 4
  tail call void @bitmap_free(ptr noundef %65) #11
  br label %66

66:                                               ; preds = %64, %58
  store ptr null, ptr %60, align 4
  store i32 1, ptr %15, align 4
  br label %67

67:                                               ; preds = %66, %1
  %68 = phi i32 [ %59, %66 ], [ 0, %1 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_buffers_alloc_sysfs_and_mask(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %11, %5
  %12 = phi i32 [ %17, %11 ], [ %7, %5 ]
  %13 = phi i32 [ %18, %11 ], [ 0, %5 ]
  %14 = getelementptr %struct.iio_chan_spec, ptr %3, i32 %13, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  %17 = tail call i32 @llvm.smax.i32(i32 %12, i32 %16)
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, %9
  br i1 %19, label %20, label %11

20:                                               ; preds = %11, %5
  %21 = phi i32 [ %7, %5 ], [ %17, %11 ]
  store i32 %21, ptr %6, align 8
  br label %22

22:                                               ; preds = %20, %1
  %23 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %264, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 14
  %29 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %30 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 19
  %31 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %32 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 16
  %33 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 16, i32 3
  %34 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 15
  %35 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 15, i32 3
  br label %36

36:                                               ; preds = %226, %26
  %37 = phi i32 [ 0, %26 ], [ %227, %226 ]
  %38 = load ptr, ptr %27, align 4
  %39 = getelementptr ptr, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %44, %36
  %45 = phi i32 [ %49, %44 ], [ 0, %36 ]
  %46 = getelementptr ptr, ptr %42, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = add i32 %45, 1
  br i1 %48, label %50, label %44

50:                                               ; preds = %44, %36
  %51 = phi i32 [ 0, %36 ], [ %45, %44 ]
  %52 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 10
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 10, i32 1
  store ptr %52, ptr %53, align 4
  %54 = load ptr, ptr %2, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %110, label %56

56:                                               ; preds = %50
  %57 = load i32, ptr %28, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %94, %56
  %60 = phi i32 [ %95, %94 ], [ 0, %56 ]
  %61 = phi i32 [ %96, %94 ], [ 0, %56 ]
  %62 = getelementptr %struct.iio_chan_spec, ptr %54, i32 %61
  %63 = getelementptr %struct.iio_chan_spec, ptr %54, i32 %61, i32 4
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %59
  %67 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull @.str.2, ptr noundef %62, ptr noundef nonnull @iio_show_scan_index, ptr noundef null, i64 noundef 0, i32 noundef 0, ptr noundef %29, ptr noundef %40, ptr noundef %52) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull @.str.3, ptr noundef %62, ptr noundef nonnull @iio_show_fixed_type, ptr noundef null, i64 noundef 0, i32 noundef 0, ptr noundef %29, ptr noundef %40, ptr noundef %52) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load i32, ptr %62, align 4
  %74 = icmp eq i32 %73, 13
  %75 = load i32, ptr %63, align 4
  %76 = sext i32 %75 to i64
  br i1 %74, label %79, label %77

77:                                               ; preds = %72
  %78 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull @.str.4, ptr noundef %62, ptr noundef nonnull @iio_scan_el_show, ptr noundef nonnull @iio_scan_el_store, i64 noundef %76, i32 noundef 0, ptr noundef %29, ptr noundef %40, ptr noundef %52) #11
  br label %81

79:                                               ; preds = %72
  %80 = tail call i32 @__iio_add_chan_devattr(ptr noundef nonnull @.str.4, ptr noundef %62, ptr noundef nonnull @iio_scan_el_ts_show, ptr noundef nonnull @iio_scan_el_ts_store, i64 noundef %76, i32 noundef 0, ptr noundef %29, ptr noundef %40, ptr noundef %52) #11
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81, %69, %66
  %85 = phi i32 [ %67, %66 ], [ %70, %69 ], [ %82, %81 ]
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %237, label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %85, %84 ], [ 3, %81 ]
  %89 = add i32 %88, %60
  %90 = load i32, ptr %62, align 4
  %91 = icmp eq i32 %90, 13
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, ptr %63, align 4
  store i32 %93, ptr %30, align 4
  br label %94

94:                                               ; preds = %92, %87, %59
  %95 = phi i32 [ %60, %59 ], [ %89, %92 ], [ %89, %87 ]
  %96 = add nuw nsw i32 %61, 1
  %97 = load i32, ptr %28, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %59, label %99

99:                                               ; preds = %94, %56
  %100 = phi i32 [ 0, %56 ], [ %95, %94 ]
  %101 = load i32, ptr %31, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = tail call ptr @bitmap_zalloc(i32 noundef %101, i32 noundef 3264) #11
  store ptr %108, ptr %104, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %237, label %110

110:                                              ; preds = %107, %103, %99, %50
  %111 = phi i32 [ %100, %107 ], [ %100, %103 ], [ %100, %99 ], [ 0, %50 ]
  %112 = add i32 %51, 6
  %113 = add i32 %112, %111
  %114 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %113, i32 4) #11
  %115 = extractvalue { i32, i1 } %114, 1
  br i1 %115, label %222, label %116, !prof !15

116:                                              ; preds = %110
  %117 = extractvalue { i32, i1 } %114, 0
  %118 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %117, i32 noundef 3520) #13
  %119 = icmp eq ptr %118, null
  br i1 %119, label %222, label %120

120:                                              ; preds = %116
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(20) %118, ptr noundef nonnull align 4 dereferenceable(20) @iio_buffer_attrs, i32 20, i1 false) #11
  %121 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 4
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %122, i32 0, i32 8
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  store ptr @dev_attr_length_ro, ptr %118, align 64
  %127 = load ptr, ptr %121, align 4
  br label %128

128:                                              ; preds = %126, %120
  %129 = phi ptr [ %127, %126 ], [ %122, %120 ]
  %130 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %129, i32 0, i32 13
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = getelementptr ptr, ptr %118, i32 2
  store ptr @dev_attr_watermark_ro, ptr %135, align 8
  br label %136

136:                                              ; preds = %134, %128
  %137 = load ptr, ptr %41, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = getelementptr ptr, ptr %118, i32 5
  %141 = shl i32 %51, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %140, ptr nonnull align 4 %137, i32 %141, i1 false) #11
  br label %142

142:                                              ; preds = %139, %136
  %143 = add i32 %51, 5
  %144 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 11
  %145 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 11, i32 3
  store ptr %118, ptr %145, align 4
  %146 = icmp sgt i32 %143, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %163, %142
  %148 = load ptr, ptr %52, align 4
  %149 = icmp eq ptr %148, %52
  br i1 %149, label %178, label %170

150:                                              ; preds = %163, %142
  %151 = phi i32 [ %168, %163 ], [ 0, %142 ]
  %152 = getelementptr ptr, ptr %118, i32 %151
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %155 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %154, i32 noundef 3520, i32 noundef 40) #12
  %156 = icmp eq ptr %155, null
  br i1 %156, label %218, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.iio_dev_attr, ptr %155, i32 0, i32 4
  store ptr %40, ptr %158, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %155, ptr noundef align 4 dereferenceable(16) %153, i32 16, i1 false) #11
  %159 = load ptr, ptr %153, align 4
  %160 = tail call ptr @kstrdup_const(ptr noundef %159, i32 noundef 3264) #11
  store ptr %160, ptr %155, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  tail call void @kfree(ptr noundef nonnull %155) #11
  br label %218

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.iio_dev_attr, ptr %155, i32 0, i32 2
  %165 = load ptr, ptr %52, align 4
  %166 = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  store ptr %164, ptr %166, align 4
  store ptr %165, ptr %164, align 8
  %167 = getelementptr inbounds %struct.iio_dev_attr, ptr %155, i32 0, i32 2, i32 1
  store ptr %52, ptr %167, align 4
  store volatile ptr %164, ptr %52, align 4
  store ptr %155, ptr %152, align 4
  %168 = add nuw nsw i32 %151, 1
  %169 = icmp eq i32 %168, %143
  br i1 %169, label %147, label %150

170:                                              ; preds = %170, %147
  %171 = phi ptr [ %176, %170 ], [ %148, %147 ]
  %172 = phi i32 [ %174, %170 ], [ 0, %147 ]
  %173 = getelementptr i8, ptr %171, i32 -24
  %174 = add i32 %172, 1
  %175 = getelementptr ptr, ptr %118, i32 %172
  store ptr %173, ptr %175, align 4
  %176 = load ptr, ptr %171, align 4
  %177 = icmp eq ptr %176, %52
  br i1 %177, label %178, label %170

178:                                              ; preds = %170, %147
  %179 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %37) #11
  store ptr %179, ptr %144, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %218, label %181

181:                                              ; preds = %178
  %182 = tail call i32 @iio_device_register_sysfs_group(ptr noundef %0, ptr noundef %144) #11
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %215

184:                                              ; preds = %181
  %185 = icmp sgt i32 %37, 0
  br i1 %185, label %226, label %186

186:                                              ; preds = %184
  %187 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %112, i32 4) #11
  %188 = extractvalue { i32, i1 } %187, 1
  br i1 %188, label %215, label %189, !prof !15

189:                                              ; preds = %186
  %190 = extractvalue { i32, i1 } %187, 0
  %191 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %190, i32 noundef 3520) #13
  %192 = icmp eq ptr %191, null
  br i1 %192, label %215, label %193

193:                                              ; preds = %189
  %194 = shl i32 %143, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %191, ptr nonnull align 64 %118, i32 %194, i1 false) #11
  store ptr %191, ptr %33, align 4
  store ptr @.str.21, ptr %32, align 4
  %195 = tail call i32 @iio_device_register_sysfs_group(ptr noundef %0, ptr noundef %32) #11
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %193
  %198 = add i32 %111, 1
  %199 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %198, i32 4) #11
  %200 = extractvalue { i32, i1 } %199, 1
  br i1 %200, label %212, label %201, !prof !15

201:                                              ; preds = %197
  %202 = extractvalue { i32, i1 } %199, 0
  %203 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %202, i32 noundef 3520) #13
  %204 = icmp eq ptr %203, null
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = getelementptr ptr, ptr %118, i32 %143
  %207 = shl i32 %111, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %203, ptr align 4 %206, i32 %207, i1 false) #11
  store ptr %203, ptr %35, align 4
  store ptr @.str.22, ptr %34, align 4
  %208 = tail call i32 @iio_device_register_sysfs_group(ptr noundef %0, ptr noundef %34) #11
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %226, label %210

210:                                              ; preds = %205
  %211 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %211) #11
  br label %212

212:                                              ; preds = %210, %201, %197, %193
  %213 = phi i32 [ %208, %210 ], [ -12, %197 ], [ -12, %201 ], [ %195, %193 ]
  %214 = load ptr, ptr %33, align 4
  tail call void @kfree(ptr noundef %214) #11
  br label %215

215:                                              ; preds = %212, %189, %186, %181
  %216 = phi i32 [ %213, %212 ], [ -12, %189 ], [ -12, %186 ], [ %182, %181 ]
  %217 = load ptr, ptr %144, align 4
  tail call void @kfree(ptr noundef %217) #11
  br label %218

218:                                              ; preds = %215, %178, %162, %150
  %219 = phi i32 [ %216, %215 ], [ -12, %162 ], [ -12, %150 ], [ -12, %178 ]
  %220 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 11, i32 3
  %221 = load ptr, ptr %220, align 4
  tail call void @kfree(ptr noundef %221) #11
  br label %222

222:                                              ; preds = %218, %116, %110
  %223 = phi i32 [ %219, %218 ], [ -12, %110 ], [ -12, %116 ]
  %224 = getelementptr inbounds %struct.iio_buffer, ptr %40, i32 0, i32 5
  %225 = load ptr, ptr %224, align 4
  tail call void @bitmap_free(ptr noundef %225) #11
  br label %237

226:                                              ; preds = %205, %184
  %227 = add nuw i32 %37, 1
  %228 = load i32, ptr %23, align 8
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %36, label %230

230:                                              ; preds = %226
  %231 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %232 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %231, i32 noundef 3520, i32 noundef 12) #12
  %233 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 8
  store ptr %232, ptr %233, align 4
  %234 = icmp eq ptr %232, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.iio_ioctl_handler, ptr %232, i32 0, i32 1
  store ptr @iio_device_buffer_ioctl, ptr %236, align 8
  tail call void @iio_device_ioctl_handler_register(ptr noundef %0, ptr noundef nonnull %232) #11
  br label %264

237:                                              ; preds = %222, %107, %84
  %238 = phi i32 [ %223, %222 ], [ %85, %84 ], [ -12, %107 ]
  tail call void @iio_free_chan_devattr_list(ptr noundef %52) #11
  %239 = icmp eq i32 %37, 0
  br i1 %239, label %264, label %240

240:                                              ; preds = %237, %230
  %241 = phi i32 [ %238, %237 ], [ -12, %230 ]
  %242 = phi i32 [ %37, %237 ], [ %227, %230 ]
  %243 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 16, i32 3
  %245 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 15, i32 3
  br label %246

246:                                              ; preds = %256, %240
  %247 = phi i32 [ %242, %240 ], [ %248, %256 ]
  %248 = add i32 %247, -1
  %249 = load ptr, ptr %243, align 4
  %250 = getelementptr ptr, ptr %249, i32 %248
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq i32 %248, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %246
  %254 = load ptr, ptr %244, align 4
  tail call void @kfree(ptr noundef %254) #11
  %255 = load ptr, ptr %245, align 4
  tail call void @kfree(ptr noundef %255) #11
  br label %256

256:                                              ; preds = %253, %246
  %257 = getelementptr inbounds %struct.iio_buffer, ptr %251, i32 0, i32 5
  %258 = load ptr, ptr %257, align 4
  tail call void @bitmap_free(ptr noundef %258) #11
  %259 = getelementptr inbounds %struct.iio_buffer, ptr %251, i32 0, i32 11
  %260 = load ptr, ptr %259, align 4
  tail call void @kfree(ptr noundef %260) #11
  %261 = getelementptr inbounds %struct.iio_buffer, ptr %251, i32 0, i32 11, i32 3
  %262 = load ptr, ptr %261, align 4
  tail call void @kfree(ptr noundef %262) #11
  %263 = getelementptr inbounds %struct.iio_buffer, ptr %251, i32 0, i32 10
  tail call void @iio_free_chan_devattr_list(ptr noundef %263) #11
  br i1 %252, label %264, label %246

264:                                              ; preds = %256, %237, %235, %22
  %265 = phi i32 [ 0, %235 ], [ 0, %22 ], [ %238, %237 ], [ %241, %256 ]
  ret i32 %265
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_device_buffer_ioctl(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq i32 %2, -1073452655
  br i1 %7, label %8, label %69

8:                                                ; preds = %4
  %9 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !16
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 4, i32 -1090519040) #14
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !8

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #11
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #15, !srcloc !17
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #11, !srcloc !18
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %9, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #11, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !8

21:                                               ; preds = %13, %8
  %22 = phi i32 [ %19, %13 ], [ 4, %8 ]
  %23 = sub i32 4, %22
  %24 = getelementptr i8, ptr %6, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #11
  br label %67

25:                                               ; preds = %13
  %26 = load i32, ptr %6, align 4
  %27 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = icmp eq ptr %0, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %34 = call ptr @get_device(ptr noundef %33) #11
  %35 = load i32, ptr %6, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i32 [ %26, %30 ], [ %35, %32 ]
  %38 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr ptr, ptr %39, i32 %37
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.iio_buffer, ptr %41, i32 0, i32 1
  %43 = call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %42) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %36
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 8) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  store ptr %0, ptr %47, align 8
  %50 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %47, i32 0, i32 1
  store ptr %41, ptr %50, align 4
  %51 = call i32 @anon_inode_getfd(ptr noundef nonnull @.str.23, ptr noundef nonnull @iio_buffer_chrdev_fileops, ptr noundef nonnull %47, i32 noundef 524290) #11
  store i32 %51, ptr %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @kfree(ptr noundef nonnull %47) #11
  br label %61

54:                                               ; preds = %49
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #15, !srcloc !17
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #11, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  %58 = call i32 @arm_copy_to_user(ptr noundef %9, ptr noundef nonnull %5, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #11, !srcloc !18
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !19
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 -14
  br label %67

61:                                               ; preds = %53, %45
  %62 = phi i32 [ %51, %53 ], [ -12, %45 ]
  call void @_clear_bit(i32 noundef 1, ptr noundef %42) #11
  br label %63

63:                                               ; preds = %61, %36
  %64 = phi i32 [ %62, %61 ], [ -16, %36 ]
  br i1 %31, label %67, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  call void @put_device(ptr noundef %66) #11
  br label %67

67:                                               ; preds = %65, %63, %54, %25, %21
  %68 = phi i32 [ -19, %25 ], [ %64, %63 ], [ %64, %65 ], [ -14, %21 ], [ %60, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %69

69:                                               ; preds = %67, %4
  %70 = phi i32 [ %68, %67 ], [ 1, %4 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_ioctl_handler_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iio_buffers_free_sysfs_and_mask(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  tail call void @iio_device_ioctl_handler_unregister(ptr noundef %7) #11
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %8) #11
  %9 = load i32, ptr %2, align 8
  %10 = add i32 %9, -1
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %35

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 16, i32 3
  %15 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 15, i32 3
  br label %16

16:                                               ; preds = %25, %12
  %17 = phi i32 [ %10, %12 ], [ %33, %25 ]
  %18 = load ptr, ptr %13, align 4
  %19 = getelementptr ptr, ptr %18, i32 %17
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %23) #11
  %24 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %24) #11
  br label %25

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.iio_buffer, ptr %20, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void @bitmap_free(ptr noundef %27) #11
  %28 = getelementptr inbounds %struct.iio_buffer, ptr %20, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %29) #11
  %30 = getelementptr inbounds %struct.iio_buffer, ptr %20, i32 0, i32 11, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %31) #11
  %32 = getelementptr inbounds %struct.iio_buffer, ptr %20, i32 0, i32 10
  tail call void @iio_free_chan_devattr_list(ptr noundef %32) #11
  %33 = add i32 %17, -1
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %16, label %35

35:                                               ; preds = %25, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_ioctl_handler_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @iio_validate_scan_mask_onehot(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 @__bitmap_weight(ptr noundef %1, i32 noundef %4) #11
  %6 = icmp eq i32 %5, 1
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_push_to_buffers(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  br label %4

4:                                                ; preds = %39, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %39 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -96
  %10 = getelementptr i8, ptr %6, i32 -72
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %30, label %13

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %6, i32 -12
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %11, %13 ], [ %26, %15 ]
  %17 = getelementptr i8, ptr %16, i32 -12
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr i8, ptr %16, i32 -8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %18, i32 %20
  %22 = load i32, ptr %17, align 4
  %23 = getelementptr i8, ptr %1, i32 %22
  %24 = getelementptr i8, ptr %16, i32 -4
  %25 = load i32, ptr %24, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %23, i32 %25, i1 false) #11
  %26 = load ptr, ptr %16, align 4
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %28, label %15

28:                                               ; preds = %15
  %29 = load ptr, ptr %14, align 4
  br label %30

30:                                               ; preds = %28, %8
  %31 = phi ptr [ %29, %28 ], [ %1, %8 ]
  %32 = getelementptr i8, ptr %6, i32 -80
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %9, ptr noundef %31) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = getelementptr i8, ptr %6, i32 -64
  tail call void @__wake_up(ptr noundef %38, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #11
  br label %39

39:                                               ; preds = %37, %30
  %40 = icmp slt i32 %35, 0
  br i1 %40, label %41, label %4

41:                                               ; preds = %39, %4
  %42 = phi i32 [ %35, %39 ], [ 0, %4 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %2)
  %8 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 18
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, %6
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  br label %22

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 2
  %16 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @devm_krealloc(ptr noundef %15, ptr noundef %17, i32 noundef %6, i32 noundef 3264) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %14
  store ptr %18, ptr %16, align 4
  %21 = load i32, ptr %5, align 4
  store i32 %21, ptr %8, align 8
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi ptr [ %13, %11 ], [ %18, %20 ]
  %24 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %1, i32 %7, i1 false)
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 9
  %27 = load i8, ptr %26, align 8, !range !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i32, ptr %5, align 4
  %31 = lshr i32 %30, 3
  %32 = add nsw i32 %31, -1
  %33 = getelementptr i64, ptr %25, i32 %32
  store i64 %3, ptr %33, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 9
  br label %36

36:                                               ; preds = %71, %34
  %37 = phi ptr [ %35, %34 ], [ %38, %71 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %73, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %38, i32 -96
  %42 = getelementptr i8, ptr %38, i32 -72
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %62, label %45

45:                                               ; preds = %40
  %46 = getelementptr i8, ptr %38, i32 -12
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi ptr [ %43, %45 ], [ %58, %47 ]
  %49 = getelementptr i8, ptr %48, i32 -12
  %50 = load ptr, ptr %46, align 4
  %51 = getelementptr i8, ptr %48, i32 -8
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %50, i32 %52
  %54 = load i32, ptr %49, align 4
  %55 = getelementptr i8, ptr %25, i32 %54
  %56 = getelementptr i8, ptr %48, i32 -4
  %57 = load i32, ptr %56, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %53, ptr align 1 %55, i32 %57, i1 false) #11
  %58 = load ptr, ptr %48, align 4
  %59 = icmp eq ptr %58, %42
  br i1 %59, label %60, label %47

60:                                               ; preds = %47
  %61 = load ptr, ptr %46, align 4
  br label %62

62:                                               ; preds = %60, %40
  %63 = phi ptr [ %61, %60 ], [ %25, %40 ]
  %64 = getelementptr i8, ptr %38, i32 -80
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 %66(ptr noundef %41, ptr noundef %63) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = getelementptr i8, ptr %38, i32 -64
  tail call void @__wake_up(ptr noundef %70, i32 noundef 1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 65 to ptr)) #11
  br label %71

71:                                               ; preds = %69, %62
  %72 = icmp slt i32 %67, 0
  br i1 %72, label %73, label %36

73:                                               ; preds = %71, %36, %14
  %74 = phi i32 [ -12, %14 ], [ 0, %36 ], [ %67, %71 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_krealloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iio_buffer_get(ptr noundef returned %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.iio_buffer, ptr %0, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #11, !srcloc !10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #11, !srcloc !14
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !15

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !8

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #11
  br label %14

14:                                               ; preds = %12, %8, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iio_device_attach_buffer(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  %8 = shl i32 %7, 2
  %9 = tail call noalias ptr @krealloc(ptr noundef %4, i32 noundef %8, i32 noundef 3264) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  store ptr %9, ptr %3, align 4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.iio_buffer, ptr %1, i32 0, i32 16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #11, !srcloc !10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #11, !srcloc !14
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !15

18:                                               ; preds = %13
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %18, %13
  %23 = phi i32 [ 2, %13 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #11
  br label %24

24:                                               ; preds = %22, %18, %11
  %25 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr %1, ptr %25, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr ptr, ptr %30, i32 %6
  store ptr %1, ptr %31, align 4
  store i32 %7, ptr %5, align 8
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi i32 [ 0, %29 ], [ -12, %2 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @iio_compute_scan_bytes(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %5, i32 noundef 0) #11
  %7 = load i32, ptr %4, align 8
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %9, %3
  %10 = phi i32 [ %27, %9 ], [ 0, %3 ]
  %11 = phi i32 [ %31, %9 ], [ %6, %3 ]
  %12 = phi i32 [ %28, %9 ], [ 0, %3 ]
  %13 = tail call ptr @iio_find_channel_from_si(ptr noundef %0, i32 noundef %11) #11
  %14 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 5, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = lshr i8 %15, 3
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.iio_chan_spec, ptr %13, i32 0, i32 5, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = tail call i8 @llvm.umax.i8(i8 %19, i8 1) #11
  %21 = zext i8 %20 to i32
  %22 = mul nuw nsw i32 %21, %17
  %23 = add i32 %10, -1
  %24 = add i32 %23, %22
  %25 = sub nsw i32 0, %22
  %26 = and i32 %24, %25
  %27 = add i32 %26, %22
  %28 = tail call i32 @llvm.smax.i32(i32 %12, i32 %22)
  %29 = load i32, ptr %4, align 8
  %30 = add nuw i32 %11, 1
  %31 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %29, i32 noundef %30) #11
  %32 = load i32, ptr %4, align 8
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %9, label %34

34:                                               ; preds = %9, %3
  %35 = phi i32 [ 0, %3 ], [ %28, %9 ]
  %36 = phi i32 [ 0, %3 ], [ %27, %9 ]
  br i1 %2, label %37, label %56

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.iio_dev_opaque, ptr %0, i32 0, i32 19
  %39 = load i32, ptr %38, align 4
  %40 = tail call ptr @iio_find_channel_from_si(ptr noundef %0, i32 noundef %39) #11
  %41 = getelementptr inbounds %struct.iio_chan_spec, ptr %40, i32 0, i32 5, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = lshr i8 %42, 3
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.iio_chan_spec, ptr %40, i32 0, i32 5, i32 4
  %46 = load i8, ptr %45, align 4
  %47 = tail call i8 @llvm.umax.i8(i8 %46, i8 1) #11
  %48 = zext i8 %47 to i32
  %49 = mul nuw nsw i32 %48, %44
  %50 = add i32 %36, -1
  %51 = add i32 %50, %49
  %52 = sub nsw i32 0, %49
  %53 = and i32 %51, %52
  %54 = add i32 %53, %49
  %55 = tail call i32 @llvm.smax.i32(i32 %35, i32 %49)
  br label %56

56:                                               ; preds = %37, %34
  %57 = phi i32 [ %55, %37 ], [ %35, %34 ]
  %58 = phi i32 [ %54, %37 ], [ %36, %34 ]
  %59 = add nsw i32 %57, -1
  %60 = add i32 %59, %58
  %61 = sub nsw i32 0, %57
  %62 = and i32 %60, %61
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_find_channel_from_si(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_attach_poll_func(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_detach_poll_func(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_register_sysfs_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_free_chan_devattr_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_add_chan_devattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_show_scan_index(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %7) #11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_show_fixed_type(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = trunc i32 %8 to i8
  %10 = and i32 %8, 255
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 2, i8 %9
  %13 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = icmp ugt i8 %14, 1
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = zext i8 %14 to i32
  %18 = zext i8 %12 to i32
  %19 = getelementptr [3 x ptr], ptr @iio_endian_prefix, i32 0, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = load i8, ptr %6, align 4
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 2
  %27 = load i8, ptr %26, align 2
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef %20, i32 noundef %22, i32 noundef %25, i32 noundef %28, i32 noundef %17, i32 noundef %31) #11
  br label %49

33:                                               ; preds = %3
  %34 = zext i8 %12 to i32
  %35 = getelementptr [3 x ptr], ptr @iio_endian_prefix, i32 0, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = load i8, ptr %6, align 4
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 2
  %43 = load i8, ptr %42, align 2
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 5, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef %36, i32 noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %47) #11
  br label %49

49:                                               ; preds = %33, %16
  %50 = phi i32 [ %32, %16 ], [ %48, %33 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_scan_el_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.iio_buffer, ptr %5, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = lshr i32 %8, 5
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %8, 31
  %15 = lshr i32 %13, %14
  %16 = and i32 %15, 1
  %17 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %16) #11
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_scan_el_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !16
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %98, label %11

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %0, i32 480
  call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 15
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %96

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr i8, ptr %0, i32 504
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, %19
  br i1 %22, label %96, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8, ptr %5, align 1, !range !13
  %29 = icmp eq i8 %28, 0
  br label %42

30:                                               ; preds = %23
  %31 = lshr i32 %19, 5
  %32 = getelementptr i32, ptr %25, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %19, 31
  %35 = load i8, ptr %5, align 1, !range !13
  %36 = icmp eq i8 %35, 0
  %37 = shl nuw i32 1, %34
  %38 = and i32 %33, %37
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %36, i1 %39, i1 false
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  call void @_clear_bit(i32 noundef %19, ptr noundef nonnull %25) #11
  br label %96

42:                                               ; preds = %30, %27
  %43 = phi i1 [ false, %27 ], [ %39, %30 ]
  %44 = phi i1 [ %29, %27 ], [ %36, %30 ]
  %45 = select i1 %44, i1 true, i1 %43
  br i1 %45, label %96, label %46

46:                                               ; preds = %42
  %47 = icmp eq i32 %21, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 452, i32 noundef 9, ptr noundef nonnull @.str.12) #11
  br label %96

49:                                               ; preds = %46
  %50 = call ptr @bitmap_alloc(i32 noundef %21, i32 noundef 3264) #11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %96, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %24, align 4
  %54 = load i32, ptr %20, align 8
  %55 = add i32 %54, 31
  %56 = lshr i32 %55, 3
  %57 = and i32 %56, 536870908
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %50, ptr align 4 %53, i32 %57, i1 false) #11
  call void @_set_bit(i32 noundef %19, ptr noundef nonnull %50) #11
  %58 = getelementptr i8, ptr %0, i32 548
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.iio_buffer_setup_ops, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %52
  %64 = call zeroext i1 %61(ptr noundef %6, ptr noundef nonnull %50) #11
  br i1 %64, label %65, label %95

65:                                               ; preds = %63, %52
  %66 = getelementptr i8, ptr %0, i32 500
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr %20, align 8
  %71 = call i32 @_find_first_bit_le(ptr noundef nonnull %50, i32 noundef %70) #11
  %72 = icmp eq i32 %71, %70
  br i1 %72, label %95, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %67, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %73
  %77 = add i32 %70, 31
  %78 = lshr i32 %77, 5
  br label %79

79:                                               ; preds = %83, %76
  %80 = phi ptr [ %67, %76 ], [ %84, %83 ]
  %81 = call i32 @__bitmap_subset(ptr noundef nonnull %50, ptr noundef %80, i32 noundef %70) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr i32, ptr %80, i32 %78
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %79

87:                                               ; preds = %79
  %88 = icmp eq ptr %80, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %87, %65
  %90 = load ptr, ptr %24, align 4
  %91 = load i32, ptr %20, align 8
  %92 = add i32 %91, 31
  %93 = lshr i32 %92, 3
  %94 = and i32 %93, 536870908
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %90, ptr nonnull align 4 %50, i32 %94, i1 false) #11
  call void @bitmap_free(ptr noundef nonnull %50) #11
  br label %96

95:                                               ; preds = %87, %83, %73, %69, %63
  call void @bitmap_free(ptr noundef nonnull %50) #11
  br label %96

96:                                               ; preds = %95, %89, %49, %48, %42, %41, %16, %11
  %97 = phi i32 [ %3, %89 ], [ %3, %41 ], [ %3, %42 ], [ -12, %49 ], [ -22, %48 ], [ -22, %95 ], [ -22, %16 ], [ -16, %11 ]
  call void @mutex_unlock(ptr noundef %12) #11
  br label %98

98:                                               ; preds = %96, %4
  %99 = phi i32 [ %9, %4 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_scan_el_ts_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_buffer, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 4, !range !13
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %8) #11
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_scan_el_ts_store(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !16
  %8 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 480
  call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 15
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @mutex_unlock(ptr noundef %11) #11
  br label %21

16:                                               ; preds = %10
  %17 = load i8, ptr %5, align 1, !range !13
  %18 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 9
  store i8 %17, ptr %18, align 4
  call void @mutex_unlock(ptr noundef %11) #11
  %19 = icmp eq i32 %8, 0
  %20 = select i1 %19, i32 %3, i32 %8
  br label %21

21:                                               ; preds = %16, %15, %4
  %22 = phi i32 [ %8, %4 ], [ -16, %15 ], [ %20, %16 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_read_length(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %6) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_write_length(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !16
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %7, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 480
  call void @mutex_lock(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 15
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %5, align 4
  %25 = call i32 %23(ptr noundef %7, i32 noundef %24) #11
  %26 = load i32, ptr %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 %26, ptr %29, align 4
  br label %33

33:                                               ; preds = %32, %28, %19, %14
  %34 = phi i32 [ %3, %19 ], [ %3, %28 ], [ %3, %32 ], [ -16, %14 ]
  call void @mutex_unlock(ptr noundef %15) #11
  br label %35

35:                                               ; preds = %33, %10, %4
  %36 = phi i32 [ %34, %33 ], [ %8, %4 ], [ %3, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_show_enable(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_buffer, ptr %5, i32 0, i32 15
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, %6
  %9 = zext i1 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %9) #11
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_store_enable(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !16
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %0, i32 480
  call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.iio_buffer, ptr %8, i32 0, i32 15
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, %13
  %16 = load i8, ptr %5, align 1, !range !13
  %17 = zext i1 %15 to i8
  %18 = icmp eq i8 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = icmp eq i8 %16, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = call fastcc i32 @__iio_update_buffers(ptr noundef %6, ptr noundef %8, ptr noundef null)
  br label %25

23:                                               ; preds = %19
  %24 = call fastcc i32 @__iio_update_buffers(ptr noundef %6, ptr noundef null, ptr noundef %8)
  br label %25

25:                                               ; preds = %23, %21, %11
  %26 = phi i32 [ %9, %11 ], [ %22, %21 ], [ %24, %23 ]
  call void @mutex_unlock(ptr noundef %12) #11
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 %26, i32 %3
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i32 [ %28, %25 ], [ %9, %4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_show_watermark(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_buffer, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %7) #11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_store_watermark(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !16
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %0, i32 480
  call void @mutex_lock(ptr noundef %14) #11
  %15 = load i32, ptr %5, align 4
  %16 = load i32, ptr %7, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 15
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 8
  store i32 %15, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %18, %13
  %25 = phi i32 [ %3, %22 ], [ -22, %13 ], [ -16, %18 ]
  call void @mutex_unlock(ptr noundef %14) #11
  br label %26

26:                                               ; preds = %24, %10, %4
  %27 = phi i32 [ %25, %24 ], [ %8, %4 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_dma_show_data_available(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_buffer, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iio_buffer_access_funcs, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %5) #11
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %10) #11
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @direction_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.iio_dev_attr, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_buffer, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %10 [
    i32 0, label %8
    i32 1, label %9
  ]

8:                                                ; preds = %3
  store i32 683625, ptr %2, align 1
  br label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) @.str.20, i32 5, i1 false)
  br label %10

10:                                               ; preds = %9, %8, %3
  %11 = phi i32 [ 4, %9 ], [ 3, %8 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_inode_getfd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iio_buffer_chrdev_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.iio_dev_buffer_pair, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @kfree(ptr noundef %4) #11
  %9 = getelementptr inbounds %struct.iio_buffer, ptr %7, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %9) #11
  %10 = icmp eq ptr %5, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.iio_dev, ptr %5, i32 0, i32 2
  tail call void @put_device(ptr noundef %12) #11
  br label %13

13:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind allocsize(1) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148064935}
!10 = !{i64 461096, i64 2147951067, i64 2147951093, i64 2147951140, i64 2147951162, i64 2147951190, i64 2147951210}
!11 = !{i64 2147967094, i64 2147967126, i64 2147967155, i64 2147967189, i64 2147967220, i64 2147967243}
!12 = !{i64 2149334420}
!13 = !{i8 0, i8 2}
!14 = !{i64 2147964737, i64 2147964769, i64 2147964798, i64 2147964832, i64 2147964863, i64 2147964886}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{!"auto-init"}
!17 = !{i64 4016324}
!18 = !{i64 4016521}
!19 = !{i64 2151501800}
