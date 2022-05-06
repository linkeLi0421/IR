; ModuleID = '/llk/IR/drivers/ata/libata-transport.c_pt.bc'
source_filename = "../drivers/ata/libata-transport.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_port_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_port_classify\22\09\09\09\09\09"
module asm "__kstrtabns_ata_port_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.80 = type { i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.transport_class = type { %struct.class, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.anon.81 = type { i32, ptr }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.75, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.75 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ata_internal = type { %struct.scsi_transport_template, [3 x %struct.device_attribute], [3 x %struct.device_attribute], [9 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, [4 x ptr], [4 x ptr], [10 x ptr] }
%struct.ata_show_ering_arg = type { ptr, i32 }

@ata_port_type = external dso_local constant %struct.device_type, align 4
@.str = private unnamed_addr constant [6 x i8] c"ata%d\00", align 1
@ata_class_names = internal unnamed_addr constant [11 x %struct.anon.80] [%struct.anon.80 { i32 0, ptr @.str.4 }, %struct.anon.80 { i32 1, ptr @.str.5 }, %struct.anon.80 { i32 2, ptr @.str.5 }, %struct.anon.80 { i32 3, ptr @.str.6 }, %struct.anon.80 { i32 4, ptr @.str.6 }, %struct.anon.80 { i32 5, ptr @.str.7 }, %struct.anon.80 { i32 6, ptr @.str.7 }, %struct.anon.80 { i32 7, ptr @.str.8 }, %struct.anon.80 { i32 8, ptr @.str.8 }, %struct.anon.80 { i32 9, ptr @.str.9 }, %struct.anon.80 { i32 11, ptr @.str.10 }], align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"\016ata%u: found unknown device (class %u)\0A\00", align 1
@__kstrtab_ata_port_classify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_port_classify = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_port_classify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_port_classify to i32), ptr @__kstrtab_ata_port_classify, ptr @__kstrtabns_ata_port_classify }, section "___ksymtab_gpl+ata_port_classify", align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"link%d\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"link%d.%d\00", align 1
@ata_port_class = internal global %struct.transport_class { %struct.class { ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, align 4
@ata_link_class = internal global %struct.transport_class { %struct.class { ptr @.str.14, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, align 4
@ata_dev_class = internal global %struct.transport_class { %struct.class { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null }, align 4
@dev_attr_nr_pmp_links = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @show_ata_port_nr_pmp_links, ptr null }, align 4
@dev_attr_idle_irq = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @show_ata_port_idle_irq, ptr null }, align 4
@dev_attr_port_no = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @show_ata_port_port_no, ptr null }, align 4
@dev_attr_hw_sata_spd_limit = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @show_ata_link_hw_sata_spd_limit, ptr null }, align 4
@dev_attr_sata_spd_limit = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @show_ata_link_sata_spd_limit, ptr null }, align 4
@dev_attr_sata_spd = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @show_ata_link_sata_spd, ptr null }, align 4
@dev_attr_class = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @show_ata_dev_class, ptr null }, align 4
@dev_attr_pio_mode = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @show_ata_dev_pio_mode, ptr null }, align 4
@dev_attr_dma_mode = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292 }, ptr @show_ata_dev_dma_mode, ptr null }, align 4
@dev_attr_xfer_mode = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @show_ata_dev_xfer_mode, ptr null }, align 4
@dev_attr_spdn_cnt = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @show_ata_dev_spdn_cnt, ptr null }, align 4
@dev_attr_ering = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @show_ata_dev_ering, ptr null }, align 4
@dev_attr_id = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292 }, ptr @show_ata_dev_id, ptr null }, align 4
@dev_attr_gscr = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292 }, ptr @show_ata_dev_gscr, ptr null }, align 4
@dev_attr_trim = internal unnamed_addr constant %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292 }, ptr @show_ata_dev_trim, ptr null }, align 4
@ata_scsi_transport_template = dso_local local_unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ata\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"atapi\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pmp\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"semb\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"zac\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"dev%d.%d\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dev%d.%d.0\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"ata_port\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ata_link\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"ata_device\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"nr_pmp_links\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"idle_irq\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"port_no\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"hw_sata_spd_limit\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"sata_spd_limit\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"sata_spd\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"pio_mode\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ata_xfer_names = internal unnamed_addr constant [24 x %struct.anon.81] [%struct.anon.81 { i32 71, ptr @.str.33 }, %struct.anon.81 { i32 70, ptr @.str.34 }, %struct.anon.81 { i32 69, ptr @.str.35 }, %struct.anon.81 { i32 68, ptr @.str.36 }, %struct.anon.81 { i32 67, ptr @.str.37 }, %struct.anon.81 { i32 66, ptr @.str.38 }, %struct.anon.81 { i32 65, ptr @.str.39 }, %struct.anon.81 { i32 64, ptr @.str.40 }, %struct.anon.81 { i32 36, ptr @.str.41 }, %struct.anon.81 { i32 35, ptr @.str.42 }, %struct.anon.81 { i32 34, ptr @.str.43 }, %struct.anon.81 { i32 33, ptr @.str.44 }, %struct.anon.81 { i32 32, ptr @.str.45 }, %struct.anon.81 { i32 18, ptr @.str.46 }, %struct.anon.81 { i32 17, ptr @.str.47 }, %struct.anon.81 { i32 16, ptr @.str.48 }, %struct.anon.81 { i32 14, ptr @.str.49 }, %struct.anon.81 { i32 13, ptr @.str.50 }, %struct.anon.81 { i32 12, ptr @.str.51 }, %struct.anon.81 { i32 11, ptr @.str.52 }, %struct.anon.81 { i32 10, ptr @.str.53 }, %struct.anon.81 { i32 9, ptr @.str.54 }, %struct.anon.81 { i32 8, ptr @.str.55 }, %struct.anon.81 { i32 0, ptr @.str.56 }], align 4
@.str.31 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_7\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_6\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_5\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_4\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_3\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_2\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_1\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"XFER_UDMA_0\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"XFER_MW_DMA_4\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"XFER_MW_DMA_3\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"XFER_MW_DMA_2\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"XFER_MW_DMA_1\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"XFER_MW_DMA_0\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"XFER_SW_DMA_2\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"XFER_SW_DMA_1\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"XFER_SW_DMA_0\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"XFER_PIO_6\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"XFER_PIO_5\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"XFER_PIO_4\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"XFER_PIO_3\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"XFER_PIO_2\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"XFER_PIO_1\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"XFER_PIO_0\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"XFER_PIO_SLOW\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"dma_mode\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"xfer_mode\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"spdn_cnt\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"ering\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"[%5llu.%09lu]\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"DeviceError\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"HostStateMachineError\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"MediaError\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"BusError\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"HostBusError\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"SystemError\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"InvalidArg\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"NoDeviceHint\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"NCQError\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"%04x%c\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"gscr\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"%08x%c\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"forced_unsupported\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"forced_unqueued\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"queued\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"unqueued\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ata_port_classify, ptr @libata_transport_exit], section "llvm.metadata"
@switch.table.show_ata_dev_class = private unnamed_addr constant [12 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 10], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_tport_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 33
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  tail call void @ata_tlink_delete(ptr noundef %3)
  tail call void @transport_remove_device(ptr noundef %2) #13
  tail call void @device_del(ptr noundef %2) #13
  tail call void @transport_destroy_device(ptr noundef %2) #13
  tail call void @put_device(ptr noundef %2) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_tlink_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.ata_device, ptr %5, i32 0, i32 6
  tail call void @transport_remove_device(ptr noundef %6) #13
  tail call void @device_del(ptr noundef %6) #13
  tail call void @transport_destroy_device(ptr noundef %6) #13
  tail call void @put_device(ptr noundef %6) #13
  %7 = tail call ptr @ata_dev_next(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 2) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %1
  %10 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 2
  tail call void @transport_remove_device(ptr noundef %10) #13
  tail call void @device_del(ptr noundef %10) #13
  tail call void @transport_destroy_device(ptr noundef %10) #13
  tail call void @put_device(ptr noundef %10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_destroy_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_tport_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 33
  tail call void @device_initialize(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 33, i32 4
  store ptr @ata_port_type, ptr %4, align 8
  %5 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 33, i32 1
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  tail call void @ata_host_get(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 33, i32 33
  store ptr @ata_tport_release, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %10) #13
  tail call void @transport_setup_device(ptr noundef %3) #13
  %12 = tail call i32 @device_add(ptr noundef %3) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 33, i32 11, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = or i16 %16, 2
  store i16 %20, ptr %15, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #13
  tail call void @pm_runtime_enable(ptr noundef %3) #13
  tail call void @pm_runtime_forbid(ptr noundef %3) #13
  %23 = tail call i32 @transport_add_device(ptr noundef %3) #13
  tail call void @transport_configure_device(ptr noundef %3) #13
  %24 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %25 = tail call i32 @ata_tlink_add(ptr noundef %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  tail call void @transport_remove_device(ptr noundef %3) #13
  tail call void @device_del(ptr noundef %3) #13
  br label %28

28:                                               ; preds = %27, %2
  %29 = phi i32 [ %12, %2 ], [ %25, %27 ]
  tail call void @transport_destroy_device(ptr noundef %3) #13
  tail call void @put_device(ptr noundef %3) #13
  %30 = load ptr, ptr %6, align 4
  tail call void @ata_host_put(ptr noundef %30) #13
  br label %31

31:                                               ; preds = %28, %21
  %32 = phi i32 [ %29, %28 ], [ 0, %21 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ata_tport_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = load ptr, ptr %2, align 4
  tail call void @ata_host_put(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_setup_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_configure_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_tlink_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %0, align 64
  tail call void @device_initialize(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 2, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 2, i32 33
  store ptr @ata_tlink_release, ptr %6, align 4
  %7 = load ptr, ptr %0, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 26
  %12 = load ptr, ptr %11, align 64
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %16) #13
  br label %24

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %20, i32 noundef %22) #13
  br label %24

24:                                               ; preds = %18, %14
  tail call void @transport_setup_device(ptr noundef %2) #13
  %25 = tail call i32 @device_add(ptr noundef %2) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = tail call i32 @transport_add_device(ptr noundef %2) #13
  tail call void @transport_configure_device(ptr noundef %2) #13
  %29 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %78, label %31

31:                                               ; preds = %65, %27
  %32 = phi ptr [ %67, %65 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %32, align 64
  %35 = load ptr, ptr %34, align 64
  tail call void @device_initialize(ptr noundef %33) #13
  %36 = getelementptr inbounds %struct.ata_link, ptr %34, i32 0, i32 2
  %37 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 6, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 6, i32 33
  store ptr @ata_tdev_release, ptr %38, align 4
  %39 = load ptr, ptr %34, align 64
  %40 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 25
  %41 = icmp eq ptr %40, %34
  br i1 %41, label %46, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 26
  %44 = load ptr, ptr %43, align 64
  %45 = icmp eq ptr %44, %34
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %31
  %47 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %48, i32 noundef %50) #13
  br label %58

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ata_link, ptr %34, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef %54, i32 noundef %56) #13
  br label %58

58:                                               ; preds = %52, %46
  tail call void @transport_setup_device(ptr noundef %33) #13
  %59 = tail call i32 @device_add(ptr noundef %33) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  tail call void @transport_destroy_device(ptr noundef %33) #13
  tail call void @put_device(ptr noundef %33) #13
  %62 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %63 = getelementptr %struct.ata_device, ptr %32, i32 -1
  %64 = icmp ult ptr %63, %62
  br i1 %64, label %75, label %69

65:                                               ; preds = %58
  %66 = tail call i32 @transport_add_device(ptr noundef %33) #13
  tail call void @transport_configure_device(ptr noundef %33) #13
  %67 = tail call ptr @ata_dev_next(ptr noundef nonnull %32, ptr noundef %0, i32 noundef 2) #13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %31

69:                                               ; preds = %69, %61
  %70 = phi ptr [ %73, %69 ], [ %63, %61 ]
  %71 = phi ptr [ %70, %69 ], [ %32, %61 ]
  %72 = getelementptr %struct.ata_device, ptr %71, i32 -1, i32 6
  tail call void @transport_remove_device(ptr noundef %72) #13
  tail call void @device_del(ptr noundef %72) #13
  tail call void @transport_destroy_device(ptr noundef %72) #13
  tail call void @put_device(ptr noundef %72) #13
  %73 = getelementptr %struct.ata_device, ptr %70, i32 -1
  %74 = icmp ult ptr %73, %62
  br i1 %74, label %75, label %69

75:                                               ; preds = %69, %61
  tail call void @transport_remove_device(ptr noundef %2) #13
  tail call void @device_del(ptr noundef %2) #13
  br label %76

76:                                               ; preds = %75, %24
  %77 = phi i32 [ %25, %24 ], [ %59, %75 ]
  tail call void @transport_destroy_device(ptr noundef %2) #13
  tail call void @put_device(ptr noundef %2) #13
  br label %78

78:                                               ; preds = %76, %65, %27
  %79 = phi i32 [ %77, %76 ], [ 0, %27 ], [ 0, %65 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_port_classify(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @ata_dev_classify(ptr noundef %1) #13
  switch i32 %3, label %4 [
    i32 1, label %8
    i32 2, label %8
    i32 3, label %8
    i32 4, label %8
    i32 5, label %8
    i32 6, label %8
    i32 7, label %8
    i32 8, label %8
    i32 9, label %8
    i32 11, label %8
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef %3) #14
  br label %8

8:                                                ; preds = %4, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_classify(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ata_tlink_release(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_attach_transport() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 604) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %69, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.scsi_transport_template, ptr %2, i32 0, i32 10
  store ptr @ata_scsi_error, ptr %5, align 8
  %6 = getelementptr inbounds %struct.scsi_transport_template, ptr %2, i32 0, i32 3
  store ptr @ata_scsi_user_scan, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 7
  %8 = getelementptr inbounds %struct.attribute_container, ptr %2, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.attribute_container, ptr %2, i32 0, i32 2
  store ptr @ata_port_class, ptr %9, align 4
  %10 = getelementptr inbounds %struct.attribute_container, ptr %2, i32 0, i32 5
  store ptr @ata_tport_match, ptr %10, align 8
  %11 = tail call i32 @attribute_container_register(ptr noundef nonnull %2) #13
  %12 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 4
  %13 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 4, i32 0, i32 2
  store ptr @ata_link_class, ptr %13, align 8
  %14 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 6
  %15 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 4, i32 0, i32 4
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 4, i32 0, i32 5
  store ptr @ata_tlink_match, ptr %16, align 4
  %17 = tail call i32 @attribute_container_register(ptr noundef %12) #13
  %18 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 5
  %19 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 5, i32 0, i32 2
  store ptr @ata_dev_class, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 8
  %21 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 5, i32 0, i32 4
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 5, i32 0, i32 5
  store ptr @ata_tdev_match, ptr %22, align 8
  %23 = tail call i32 @attribute_container_register(ptr noundef %18) #13
  %24 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_nr_pmp_links, i32 16, i1 false)
  %25 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  store i16 292, ptr %25, align 8
  store ptr %24, ptr %7, align 4
  %26 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %26, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_idle_irq, i32 16, i1 false)
  %27 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 1, i32 1, i32 0, i32 1
  store i16 292, ptr %27, align 8
  %28 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 7, i32 1
  store ptr %26, ptr %28, align 8
  %29 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 1, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_port_no, i32 16, i1 false)
  %30 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 1, i32 2, i32 0, i32 1
  store i16 292, ptr %30, align 8
  %31 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 7, i32 2
  store ptr %29, ptr %31, align 4
  %32 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 7, i32 3
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %33, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_hw_sata_spd_limit, i32 16, i1 false)
  %34 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 1
  store i16 292, ptr %34, align 8
  store ptr %33, ptr %14, align 4
  %35 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_sata_spd_limit, i32 16, i1 false)
  %36 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 2, i32 1, i32 0, i32 1
  store i16 292, ptr %36, align 8
  %37 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 6, i32 1
  store ptr %35, ptr %37, align 8
  %38 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 2, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %38, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_sata_spd, i32 16, i1 false)
  %39 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 2, i32 2, i32 0, i32 1
  store i16 292, ptr %39, align 8
  %40 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 6, i32 2
  store ptr %38, ptr %40, align 4
  %41 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 6, i32 3
  store ptr null, ptr %41, align 8
  %42 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %42, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_class, i32 16, i1 false)
  %43 = getelementptr inbounds %struct.ata_internal, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1
  store i16 292, ptr %43, align 8
  store ptr %42, ptr %20, align 4
  %44 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %44, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_pio_mode, i32 16, i1 false)
  %45 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 1, i32 0, i32 1
  store i16 292, ptr %45, align 8
  %46 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 1
  store ptr %44, ptr %46, align 8
  %47 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %47, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_dma_mode, i32 16, i1 false)
  %48 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 2, i32 0, i32 1
  store i16 292, ptr %48, align 8
  %49 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 2
  store ptr %47, ptr %49, align 4
  %50 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %50, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_xfer_mode, i32 16, i1 false)
  %51 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 3, i32 0, i32 1
  store i16 292, ptr %51, align 8
  %52 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 3
  store ptr %50, ptr %52, align 8
  %53 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %53, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_spdn_cnt, i32 16, i1 false)
  %54 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 4, i32 0, i32 1
  store i16 292, ptr %54, align 8
  %55 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 4
  store ptr %53, ptr %55, align 4
  %56 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %56, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_ering, i32 16, i1 false)
  %57 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 5, i32 0, i32 1
  store i16 292, ptr %57, align 8
  %58 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 5
  store ptr %56, ptr %58, align 8
  %59 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %59, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_id, i32 16, i1 false)
  %60 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 6, i32 0, i32 1
  store i16 292, ptr %60, align 8
  %61 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 6
  store ptr %59, ptr %61, align 4
  %62 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %62, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_gscr, i32 16, i1 false)
  %63 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 7, i32 0, i32 1
  store i16 292, ptr %63, align 8
  %64 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 7
  store ptr %62, ptr %64, align 8
  %65 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %65, ptr noundef nonnull align 4 dereferenceable(16) @dev_attr_trim, i32 16, i1 false)
  %66 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 3, i32 8, i32 0, i32 1
  store i16 292, ptr %66, align 8
  %67 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 8
  store ptr %65, ptr %67, align 4
  %68 = getelementptr %struct.ata_internal, ptr %2, i32 0, i32 8, i32 9
  store ptr null, ptr %68, align 8
  br label %69

69:                                               ; preds = %4, %0
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_error(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_user_scan(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ata_tport_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 33
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @ata_tport_release
  %6 = load ptr, ptr @ata_scsi_transport_template, align 4
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %5, i1 %7, i1 false
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ata_tlink_match(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr @ata_scsi_transport_template, align 4
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @ata_tlink_release
  %7 = getelementptr inbounds %struct.ata_internal, ptr %3, i32 0, i32 4
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %6, i1 %8, i1 false
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ata_tdev_match(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr @ata_scsi_transport_template, align 4
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @ata_tdev_release
  %7 = getelementptr inbounds %struct.ata_internal, ptr %3, i32 0, i32 5
  %8 = icmp eq ptr %7, %0
  %9 = select i1 %6, i1 %8, i1 false
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_release_transport(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @attribute_container_unregister(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/transport_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ata_internal, ptr %0, i32 0, i32 4
  %7 = tail call i32 @attribute_container_unregister(ptr noundef %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/transport_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ata_internal, ptr %0, i32 0, i32 5
  %12 = tail call i32 @attribute_container_unregister(ptr noundef %11) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/transport_class.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

15:                                               ; preds = %10
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @libata_transport_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @transport_class_register(ptr noundef nonnull @ata_link_class) #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call i32 @transport_class_register(ptr noundef nonnull @ata_port_class) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @transport_class_register(ptr noundef nonnull @ata_dev_class) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_port_class) #13
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %9 ]
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_link_class) #13
  br label %12

12:                                               ; preds = %10, %6, %0
  %13 = phi i32 [ 0, %6 ], [ %1, %0 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_class_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @transport_class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @libata_transport_exit() #7 section ".exit.text" {
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_link_class) #13
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_port_class) #13
  tail call void @transport_class_unregister(ptr noundef nonnull @ata_dev_class) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ata_tdev_release(ptr nocapture noundef %0) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_port_nr_pmp_links(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -36
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_port_idle_irq(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -20
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.19, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_port_port_no(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -10192
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.21, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_link_hw_sata_spd_limit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 488
  %7 = load i32, ptr %6, align 16
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 false) #13, !range !10
  %10 = sub nuw nsw i32 32, %9
  %11 = select i1 %8, i32 0, i32 %10
  %12 = tail call ptr @sata_spd_string(i32 noundef %11) #13
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sata_spd_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_link_sata_spd_limit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 492
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 false) #13, !range !10
  %10 = sub nuw nsw i32 32, %9
  %11 = select i1 %8, i32 0, i32 %10
  %12 = tail call ptr @sata_spd_string(i32 noundef %11) #13
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_link_sata_spd(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 496
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @sata_spd_string(i32 noundef %7) #13
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.23, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @show_ata_dev_class(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #11 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 488
  %7 = load i32, ptr %6, align 64
  %8 = icmp ult i32 %7, 12
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = trunc i32 %7 to i16
  %11 = lshr i16 3071, %10
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds [12 x i32], ptr @switch.table.show_ata_dev_class, i32 0, i32 %7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [11 x %struct.anon.80], ptr @ata_class_names, i32 0, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @stpcpy(ptr %2, ptr %18) #13
  %20 = ptrtoint ptr %19 to i32
  %21 = ptrtoint ptr %2 to i32
  %22 = sub i32 %20, %21
  br label %23

23:                                               ; preds = %14, %9, %3
  %24 = phi i32 [ %22, %14 ], [ 0, %3 ], [ 0, %9 ]
  %25 = getelementptr i8, ptr %2, i32 %24
  store i16 10, ptr %25, align 1
  %26 = add i32 %24, 1
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_pio_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 496
  %7 = load i8, ptr %6, align 8
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %23, %3
  %10 = phi i32 [ 0, %3 ], [ %26, %23 ]
  %11 = phi i32 [ 0, %3 ], [ %25, %23 ]
  %12 = phi ptr [ @.str.30, %3 ], [ %24, %23 ]
  %13 = getelementptr [24 x %struct.anon.81], ptr @ata_xfer_names, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %2, i32 %11
  %19 = getelementptr [24 x %struct.anon.81], ptr @ata_xfer_names, i32 0, i32 %10, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.31, ptr noundef %12, ptr noundef %20) #13
  %22 = add i32 %21, %11
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi ptr [ @.str.32, %17 ], [ %12, %9 ]
  %25 = phi i32 [ %22, %17 ], [ %11, %9 ]
  %26 = add nuw nsw i32 %10, 1
  %27 = icmp eq i32 %26, 24
  br i1 %27, label %28, label %9

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %2, i32 %25
  store i16 10, ptr %29, align 1
  %30 = add i32 %25, 1
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_dma_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 497
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %23, %3
  %10 = phi i32 [ 0, %3 ], [ %26, %23 ]
  %11 = phi i32 [ 0, %3 ], [ %25, %23 ]
  %12 = phi ptr [ @.str.30, %3 ], [ %24, %23 ]
  %13 = getelementptr [24 x %struct.anon.81], ptr @ata_xfer_names, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %2, i32 %11
  %19 = getelementptr [24 x %struct.anon.81], ptr @ata_xfer_names, i32 0, i32 %10, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.31, ptr noundef %12, ptr noundef %20) #13
  %22 = add i32 %21, %11
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi ptr [ @.str.32, %17 ], [ %12, %9 ]
  %25 = phi i32 [ %22, %17 ], [ %11, %9 ]
  %26 = add nuw nsw i32 %10, 1
  %27 = icmp eq i32 %26, 24
  br i1 %27, label %28, label %9

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %2, i32 %25
  store i16 10, ptr %29, align 1
  %30 = add i32 %25, 1
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_xfer_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 498
  %7 = load i8, ptr %6, align 2
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %23, %3
  %10 = phi i32 [ 0, %3 ], [ %26, %23 ]
  %11 = phi i32 [ 0, %3 ], [ %25, %23 ]
  %12 = phi ptr [ @.str.30, %3 ], [ %24, %23 ]
  %13 = getelementptr [24 x %struct.anon.81], ptr @ata_xfer_names, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %2, i32 %11
  %19 = getelementptr [24 x %struct.anon.81], ptr @ata_xfer_names, i32 0, i32 %10, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.31, ptr noundef %12, ptr noundef %20) #13
  %22 = add i32 %21, %11
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi ptr [ @.str.32, %17 ], [ %12, %9 ]
  %25 = phi i32 [ %22, %17 ], [ %11, %9 ]
  %26 = add nuw nsw i32 %10, 1
  %27 = icmp eq i32 %26, 24
  br i1 %27, label %28, label %9

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %2, i32 %25
  store i16 10, ptr %29, align 1
  %30 = add i32 %25, 1
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_spdn_cnt(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1176
  %7 = load i32, ptr %6, align 16
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.17, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_ering(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = alloca %struct.ata_show_ering_arg, align 8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %2, ptr %4, align 8
  %7 = getelementptr inbounds %struct.ata_show_ering_arg, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr i8, ptr %6, i32 1184
  %9 = call i32 @ata_ering_map(ptr noundef %8, ptr noundef nonnull @ata_show_ering, ptr noundef nonnull %4) #13
  %10 = load i32, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_ering_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_show_ering(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_ering_entry, ptr %0, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %4, i32 0) #16, !srcloc !11
  %6 = extractvalue { i64, i32 } %5, 0
  %7 = extractvalue { i64, i32 } %5, 1
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %4, i64 %6, i32 %7) #16, !srcloc !12
  %9 = extractvalue { i64, i32 } %8, 0
  %10 = trunc i64 %4 to i32
  %11 = lshr i64 %9, 6
  %12 = trunc i64 %11 to i32
  %13 = mul i32 %12, -100
  %14 = add i32 %13, %10
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.ata_show_ering_arg, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = mul i32 %14, 1000000000
  %20 = udiv i32 %19, 100
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.61, i64 noundef %11, i32 noundef %20)
  %22 = load i32, ptr %16, align 4
  %23 = add i32 %22, %21
  store i32 %23, ptr %16, align 4
  %24 = getelementptr inbounds %struct.ata_ering_entry, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr i8, ptr %26, i32 %23
  %28 = and i32 %25, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %27, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.62) #13
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi ptr [ @.str.32, %30 ], [ @.str.30, %2 ]
  %34 = phi i32 [ %31, %30 ], [ 0, %2 ]
  %35 = and i32 %25, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %27, i32 %34
  %39 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %38, ptr noundef nonnull @.str.31, ptr noundef nonnull %33, ptr noundef nonnull @.str.63) #13
  %40 = add i32 %39, %34
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi ptr [ @.str.32, %37 ], [ %33, %32 ]
  %43 = phi i32 [ %40, %37 ], [ %34, %32 ]
  %44 = and i32 %25, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %27, i32 %43
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %47, ptr noundef nonnull @.str.31, ptr noundef nonnull %42, ptr noundef nonnull @.str.64) #13
  %49 = add i32 %48, %43
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi ptr [ @.str.32, %46 ], [ %42, %41 ]
  %52 = phi i32 [ %49, %46 ], [ %43, %41 ]
  %53 = and i32 %25, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %27, i32 %52
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %56, ptr noundef nonnull @.str.31, ptr noundef %51, ptr noundef nonnull @.str.65) #13
  %58 = add i32 %57, %52
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi ptr [ @.str.32, %55 ], [ %51, %50 ]
  %61 = phi i32 [ %58, %55 ], [ %52, %50 ]
  %62 = and i32 %25, 16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = getelementptr i8, ptr %27, i32 %61
  %66 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %65, ptr noundef nonnull @.str.31, ptr noundef %60, ptr noundef nonnull @.str.66) #13
  %67 = add i32 %66, %61
  br label %68

68:                                               ; preds = %64, %59
  %69 = phi ptr [ @.str.32, %64 ], [ %60, %59 ]
  %70 = phi i32 [ %67, %64 ], [ %61, %59 ]
  %71 = and i32 %25, 32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = getelementptr i8, ptr %27, i32 %70
  %75 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %74, ptr noundef nonnull @.str.31, ptr noundef %69, ptr noundef nonnull @.str.67) #13
  %76 = add i32 %75, %70
  br label %77

77:                                               ; preds = %73, %68
  %78 = phi ptr [ @.str.32, %73 ], [ %69, %68 ]
  %79 = phi i32 [ %76, %73 ], [ %70, %68 ]
  %80 = and i32 %25, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr i8, ptr %27, i32 %79
  %84 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %83, ptr noundef nonnull @.str.31, ptr noundef %78, ptr noundef nonnull @.str.68) #13
  %85 = add i32 %84, %79
  br label %86

86:                                               ; preds = %82, %77
  %87 = phi ptr [ @.str.32, %82 ], [ %78, %77 ]
  %88 = phi i32 [ %85, %82 ], [ %79, %77 ]
  %89 = and i32 %25, 128
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = getelementptr i8, ptr %27, i32 %88
  %93 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %92, ptr noundef nonnull @.str.31, ptr noundef %87, ptr noundef nonnull @.str.69) #13
  %94 = add i32 %93, %88
  br label %95

95:                                               ; preds = %91, %86
  %96 = phi ptr [ @.str.32, %91 ], [ %87, %86 ]
  %97 = phi i32 [ %94, %91 ], [ %88, %86 ]
  %98 = and i32 %25, 256
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = getelementptr i8, ptr %27, i32 %97
  %102 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %101, ptr noundef nonnull @.str.31, ptr noundef %96, ptr noundef nonnull @.str.70) #13
  %103 = add i32 %102, %97
  br label %104

104:                                              ; preds = %100, %95
  %105 = phi ptr [ @.str.32, %100 ], [ %96, %95 ]
  %106 = phi i32 [ %103, %100 ], [ %97, %95 ]
  %107 = and i32 %25, 512
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = getelementptr i8, ptr %27, i32 %106
  %111 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %110, ptr noundef nonnull @.str.31, ptr noundef %105, ptr noundef nonnull @.str.71) #13
  %112 = add i32 %111, %106
  br label %113

113:                                              ; preds = %109, %104
  %114 = phi ptr [ @.str.32, %109 ], [ %105, %104 ]
  %115 = phi i32 [ %112, %109 ], [ %106, %104 ]
  %116 = and i32 %25, 1024
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = getelementptr i8, ptr %27, i32 %115
  %120 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %119, ptr noundef nonnull @.str.31, ptr noundef %114, ptr noundef nonnull @.str.72) #13
  %121 = add i32 %120, %115
  br label %122

122:                                              ; preds = %118, %113
  %123 = phi i32 [ %121, %118 ], [ %115, %113 ]
  %124 = getelementptr i8, ptr %27, i32 %123
  store i16 10, ptr %124, align 1
  %125 = add i32 %123, 1
  %126 = load i32, ptr %16, align 4
  %127 = add i32 %125, %126
  store i32 %127, ptr %16, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 488
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %5, i32 552
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %18, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %23, %11 ]
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = getelementptr [256 x i16], ptr %10, i32 0, i32 %12
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %12, 1
  %19 = and i32 %18, 7
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 10, i32 32
  %22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef 20, ptr noundef nonnull @.str.74, i32 noundef %17, i32 noundef %21) #13
  %23 = add i32 %22, %13
  %24 = icmp eq i32 %18, 256
  br i1 %24, label %25, label %11

25:                                               ; preds = %11, %3
  %26 = phi i32 [ 0, %3 ], [ %23, %11 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_gscr(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 488
  %7 = load i32, ptr %6, align 64
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %5, i32 552
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ 0, %9 ], [ %17, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %22, %11 ]
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = getelementptr [128 x i32], ptr %10, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = add nuw nsw i32 %12, 1
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 10, i32 32
  %21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef 20, ptr noundef nonnull @.str.76, i32 noundef %16, i32 noundef %20) #13
  %22 = add i32 %21, %13
  %23 = icmp eq i32 %17, 128
  br i1 %23, label %24, label %11

24:                                               ; preds = %11, %3
  %25 = phi i32 [ 0, %3 ], [ %22, %11 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ata_dev_trim(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 712
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -1
  %9 = and i16 %7, 32640
  %10 = icmp eq i16 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %36, label %12

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %5, i32 890
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %5, i32 -16
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 16777216
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = and i32 %19, 524288
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = getelementptr i8, ptr %5, i32 -12
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 524288
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %5, i32 1076
  %32 = load i8, ptr %31, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr @.str.82, ptr @.str.81
  br label %36

36:                                               ; preds = %30, %25, %22, %17, %12, %3
  %37 = phi ptr [ @.str.79, %17 ], [ @.str.80, %22 ], [ @.str.78, %3 ], [ @.str.78, %12 ], [ @.str.82, %25 ], [ %35, %30 ]
  %38 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 20, ptr noundef nonnull @.str.23, ptr noundef nonnull %37) #13
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attribute_container_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

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
!9 = !{i64 2153003486, i64 2153003981, i64 2153003523, i64 2153003579, i64 2153003613, i64 2153003637, i64 2153003678, i64 2153003699, i64 2153003727, i64 2153003761}
!10 = !{i32 0, i32 33}
!11 = !{i64 859785, i64 859812, i64 859834, i64 859862}
!12 = !{i64 860193, i64 860220, i64 860253, i64 860274, i64 860301, i64 860327}
