; ModuleID = '/llk/IR/drivers/ata/libata-scsi.c_pt.bc'
source_filename = "../drivers/ata/libata-scsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_attr_unload_heads:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_attr_unload_heads\22\09\09\09\09\09"
module asm "__kstrtabns_dev_attr_unload_heads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_common_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_common_sdev_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ata_common_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_std_bios_param:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_std_bios_param\22\09\09\09\09\09"
module asm "__kstrtabns_ata_std_bios_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_unlock_native_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_unlock_native_capacity\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_unlock_native_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_scsi_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_dma_need_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_dma_need_drain\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_dma_need_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_slave_config\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_slave_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_slave_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_slave_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_slave_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_queuecmd:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_queuecmd\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_queuecmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.85, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.85 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.40, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.41, %union.anon.42, %union.anon.43, %union.anon.48, ptr, ptr }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%union.anon.42 = type { %struct.rb_node }
%union.anon.43 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, %struct.list_head, ptr }
%union.anon.48 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_scsi_args = type { ptr, ptr, ptr }
%struct.ata_cpr_log = type { i8, [0 x %struct.ata_cpr] }
%struct.ata_cpr = type { i8, i8, i64, i64 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"unload_heads\00", align 1
@dev_attr_unload_heads = dso_local global %struct.device_attribute { %struct.attribute { ptr @.str, i16 420 }, ptr @ata_scsi_park_show, ptr @ata_scsi_park_store }, align 4
@__kstrtab_dev_attr_unload_heads = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_attr_unload_heads = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_attr_unload_heads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_attr_unload_heads to i32), ptr @__kstrtab_dev_attr_unload_heads, ptr @__kstrtabns_dev_attr_unload_heads }, section "___ksymtab_gpl+dev_attr_unload_heads", align 4
@ata_common_sdev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ata_common_sdev_attrs, ptr null }, align 4
@ata_common_sdev_groups = dso_local global [2 x ptr] [ptr @ata_common_sdev_attr_group, ptr null], align 4
@__kstrtab_ata_common_sdev_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_common_sdev_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_common_sdev_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_common_sdev_groups to i32), ptr @__kstrtab_ata_common_sdev_groups, ptr @__kstrtabns_ata_common_sdev_groups }, section "___ksymtab_gpl+ata_common_sdev_groups", align 4
@__kstrtab_ata_std_bios_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_std_bios_param = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_std_bios_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_std_bios_param to i32), ptr @__kstrtab_ata_std_bios_param, ptr @__kstrtabns_ata_std_bios_param }, section "___ksymtab_gpl+ata_std_bios_param", align 4
@__kstrtab_ata_scsi_unlock_native_capacity = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_unlock_native_capacity = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_unlock_native_capacity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_unlock_native_capacity to i32), ptr @__kstrtab_ata_scsi_unlock_native_capacity, ptr @__kstrtabns_ata_scsi_unlock_native_capacity }, section "___ksymtab_gpl+ata_scsi_unlock_native_capacity", align 4
@__kstrtab_ata_sas_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_scsi_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_scsi_ioctl to i32), ptr @__kstrtab_ata_sas_scsi_ioctl, ptr @__kstrtabns_ata_sas_scsi_ioctl }, section "___ksymtab_gpl+ata_sas_scsi_ioctl", align 4
@__kstrtab_ata_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_ioctl to i32), ptr @__kstrtab_ata_scsi_ioctl, ptr @__kstrtabns_ata_scsi_ioctl }, section "___ksymtab_gpl+ata_scsi_ioctl", align 4
@__kstrtab_ata_scsi_dma_need_drain = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_dma_need_drain = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_dma_need_drain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_dma_need_drain to i32), ptr @__kstrtab_ata_scsi_dma_need_drain, ptr @__kstrtabns_ata_scsi_dma_need_drain }, section "___ksymtab_gpl+ata_scsi_dma_need_drain", align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"\013ata%u.%02u: drain buffer allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"\014ata%u.%02u: sector_size=%u > PAGE_SIZE, PIO may malfunction\0A\00", align 1
@__kstrtab_ata_scsi_slave_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_slave_config = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_slave_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_slave_config to i32), ptr @__kstrtab_ata_scsi_slave_config, ptr @__kstrtabns_ata_scsi_slave_config }, section "___ksymtab_gpl+ata_scsi_slave_config", align 4
@__kstrtab_ata_scsi_slave_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_slave_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_slave_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_slave_destroy to i32), ptr @__kstrtab_ata_scsi_slave_destroy, ptr @__kstrtabns_ata_scsi_slave_destroy }, section "___ksymtab_gpl+ata_scsi_slave_destroy", align 4
@atapi_passthru16 = external dso_local local_unnamed_addr global i32, align 4
@scsi_command_size_tbl = external dso_local local_unnamed_addr constant [8 x i8], align 1
@__kstrtab_ata_scsi_queuecmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_queuecmd = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_queuecmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_queuecmd to i32), ptr @__kstrtab_ata_scsi_queuecmd, ptr @__kstrtabns_ata_scsi_queuecmd }, section "___ksymtab_gpl+ata_scsi_queuecmd", align 4
@ata_scsi_transport_template = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [96 x i8] c"\013ata%u: WARNING: synchronous SCSI scan failed without making any progress, switching to async\0A\00", align 1
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@ata_common_sdev_attrs = internal global [2 x ptr] [ptr @dev_attr_unload_heads, ptr null], align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"drivers/ata/libata-scsi.c\00", align 1
@ata_scsi_rbuf_lock = internal global %struct.spinlock zeroinitializer, align 4
@ata_scsi_rbuf = internal global [576 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\014ata%u.%02u: invalid multi_count %u ignored\0A\00", align 1
@libata_allow_tpm = external dso_local local_unnamed_addr global i32, align 4
@def_cache_mpage = internal unnamed_addr constant <{ i8, i8, [18 x i8] }> <{ i8 8, i8 18, [18 x i8] zeroinitializer }>, align 1
@def_control_mpage = internal unnamed_addr constant [12 x i8] c"\0A\0A\02\00\00\00\00\00\FF\FF\00\1E", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\014ata%u.%02u: invalid cdb length %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\014ata%u.%02u: non-matching transfer count (%d/%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: invalid service action %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: invalid transfer count %d\0A\00", align 1
@ata_to_sense_error.sense_table = internal unnamed_addr constant [14 x [4 x i8]] [[4 x i8] c"\D1\0B\00\00", [4 x i8] c"\D0\0B\00\00", [4 x i8] c"a\04\00\00", [4 x i8] c"\84\0BG\00", [4 x i8] c"7\02\04\00", [4 x i8] c"\09\02\04\00", [4 x i8] c"\01\03\13\00", [4 x i8] c"\02\04\00\00", [4 x i8] c"\08\02\04\00", [4 x i8] c"\10\05!\00", [4 x i8] c" \06(\00", [4 x i8] c"@\03\11\04", [4 x i8] c"\80\03\11\04", [4 x i8] c"\FF\FF\FF\FF"], align 1
@ata_to_sense_error.stat_table = internal unnamed_addr constant [6 x [4 x i8]] [[4 x i8] c"\80\0BG\00", [4 x i8] c"@\05!\04", [4 x i8] c" \04D\00", [4 x i8] c"\08\0BG\00", [4 x i8] c"\04\01\11\00", [4 x i8] c"\FF\FF\FF\FF"], align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"\013ata%u: translated ATA stat/err 0x%02x/%02x to SCSI SK/ASC/ASCQ 0x%x/%02x/%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"\014ata%u.%02u: could not decode error status 0x%x err_mask 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"\014ata%u: status=0x%02x {Busy} \00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\014ata%u: status=0x%02x { %s%s%s%s%s%s%s} \00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"DriveReady \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"DeviceFault \00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"SeekComplete \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"DataRequest \00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"CorrectedError \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Sense \00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Error \00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"\014ata%u: error=0x%02x {%s%s%s%s%s%s\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"DriveStatusError \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"BadCRC \00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Sector \00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"UncorrectableError \00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"SectorIdNotFound \00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"TrackZeroNotFound \00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"AddrMarkNotFound \00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: WARNING: zero len r/w req\0A\00", align 1
@ata_scsiop_inq_std.versions = internal unnamed_addr constant [6 x i8] c"\00`\03 \03\00", align 1
@__const.ata_scsiop_inq_std.hdr = private unnamed_addr constant [8 x i8] c"\00\00\05\02[\00\00\02", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"libata          \00", align 1
@def_rw_recovery_mpage = internal unnamed_addr constant <{ i8, i8, i8, [9 x i8] }> <{ i8 1, i8 10, i8 -128, [9 x i8] zeroinitializer }>, align 1
@libata_fua = external dso_local local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"Maxtor\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"BANC1G10\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"\016ata%u.%02u: Enabling discard_zeroes_data\0A\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"\014ata%u.%02u: invalid command format %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"\016ata%u.%02u: detaching (SCSI %s)\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_ata_common_sdev_groups, ptr @__ksymtab_ata_sas_scsi_ioctl, ptr @__ksymtab_ata_scsi_dma_need_drain, ptr @__ksymtab_ata_scsi_ioctl, ptr @__ksymtab_ata_scsi_queuecmd, ptr @__ksymtab_ata_scsi_slave_config, ptr @__ksymtab_ata_scsi_slave_destroy, ptr @__ksymtab_ata_scsi_unlock_native_capacity, ptr @__ksymtab_ata_std_bios_param, ptr @__ksymtab_dev_attr_unload_heads], section "llvm.metadata"
@switch.table.ata_scsi_pass_thru = private unnamed_addr constant [10 x i8] c"\00\01\01\02\00\00\00\02\02\06", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_park_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #19
  %10 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 -172
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %95, !prof !8

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 -168
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %95, !prof !8

21:                                               ; preds = %3
  %22 = getelementptr i8, ptr %0, i32 -176
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %95, !prof !8

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 -168
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %51, label %95, !prof !8

29:                                               ; preds = %17
  %30 = getelementptr i8, ptr %0, i32 -176
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %95, !prof !8

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25
  %35 = load ptr, ptr %34, align 64
  %36 = icmp eq ptr %35, %7
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 26
  %39 = load ptr, ptr %38, align 64
  %40 = icmp eq ptr %39, %34
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ 1, %46 ], [ 2, %41 ]
  %49 = icmp ugt i32 %48, %31
  %50 = getelementptr %struct.ata_port, ptr %7, i32 0, i32 25, i32 14, i32 %31
  br i1 %49, label %61, label %95

51:                                               ; preds = %25
  %52 = getelementptr i8, ptr %0, i32 -172
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, -1
  %55 = icmp sgt i32 %11, %53
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %95, !prof !9

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 28
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr %struct.ata_link, ptr %59, i32 %53, i32 14
  br label %61

61:                                               ; preds = %57, %47
  %62 = phi ptr [ %60, %57 ], [ %50, %47 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %95, label %64, !prof !10

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ata_device, ptr %62, i32 0, i32 9
  %66 = load i32, ptr %65, align 64
  switch i32 %66, label %95 [
    i32 7, label %67
    i32 5, label %67
    i32 3, label %67
    i32 1, label %67
    i32 9, label %67
  ]

67:                                               ; preds = %64, %64, %64, %64, %64
  %68 = getelementptr inbounds %struct.ata_device, ptr %62, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 131072
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load ptr, ptr %62, align 64
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 4
  %76 = load i32, ptr %75, align 16
  %77 = and i32 %76, 2
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.ata_link, ptr %73, i32 0, i32 12, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.ata_device, ptr %62, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %81
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.ata_device, ptr %62, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  %90 = sub i32 %74, %89
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = sub i32 %89, %74
  %94 = tail call i32 @jiffies_to_msecs(i32 noundef %93) #19
  br label %95

95:                                               ; preds = %92, %87, %79, %72, %67, %64, %61, %51, %47, %29, %25, %21, %17, %13
  %96 = phi i32 [ %94, %92 ], [ 0, %67 ], [ 0, %87 ], [ 0, %79 ], [ 0, %72 ], [ 0, %13 ], [ 0, %17 ], [ 0, %21 ], [ 0, %25 ], [ 0, %29 ], [ 0, %47 ], [ 0, %51 ], [ 0, %61 ], [ 0, %64 ]
  %97 = phi i1 [ true, %92 ], [ false, %67 ], [ true, %87 ], [ true, %79 ], [ true, %72 ], [ false, %13 ], [ false, %17 ], [ false, %21 ], [ false, %25 ], [ false, %29 ], [ false, %47 ], [ false, %51 ], [ false, %61 ], [ false, %64 ]
  %98 = phi i32 [ 0, %92 ], [ -95, %67 ], [ 0, %87 ], [ 0, %79 ], [ 0, %72 ], [ -19, %13 ], [ -19, %17 ], [ -19, %21 ], [ -19, %25 ], [ -19, %29 ], [ -19, %47 ], [ -19, %51 ], [ -19, %61 ], [ -19, %64 ]
  %99 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !11
  %100 = load i16, ptr %99, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %99, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !15
  br i1 %97, label %102, label %104

102:                                              ; preds = %95
  %103 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %96) #19
  br label %104

104:                                              ; preds = %102, %95
  %105 = phi i32 [ %103, %102 ], [ %98, %95 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_park_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -264
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !16
  %7 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %113

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp slt i32 %10, -2
  br i1 %11, label %113, label %12

12:                                               ; preds = %9
  %13 = icmp sgt i32 %10, 30000
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i32 30000, ptr %5, align 4
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ -75, %14 ], [ %3, %12 ]
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 53
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #19
  %23 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 27
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = getelementptr i8, ptr %0, i32 -172
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %110, !prof !8

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %0, i32 -168
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %42, label %110, !prof !8

34:                                               ; preds = %15
  %35 = getelementptr i8, ptr %0, i32 -176
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %110, !prof !8

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 -168
  %40 = load i64, ptr %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %64, label %110, !prof !8

42:                                               ; preds = %30
  %43 = getelementptr i8, ptr %0, i32 -176
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %110, !prof !8

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 25
  %48 = load ptr, ptr %47, align 64
  %49 = icmp eq ptr %48, %19
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 26
  %52 = load ptr, ptr %51, align 64
  %53 = icmp eq ptr %52, %47
  br i1 %53, label %54, label %59

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ 1, %59 ], [ 2, %54 ]
  %62 = icmp ugt i32 %61, %44
  %63 = getelementptr %struct.ata_port, ptr %19, i32 0, i32 25, i32 14, i32 %44
  br i1 %62, label %74, label %110

64:                                               ; preds = %38
  %65 = getelementptr i8, ptr %0, i32 -172
  %66 = load i32, ptr %65, align 4
  %67 = icmp sgt i32 %66, -1
  %68 = icmp sgt i32 %24, %66
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %110, !prof !9

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 28
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr %struct.ata_link, ptr %72, i32 %66, i32 14
  br label %74

74:                                               ; preds = %70, %60
  %75 = phi ptr [ %73, %70 ], [ %63, %60 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %110, label %77, !prof !10

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.ata_device, ptr %75, i32 0, i32 9
  %79 = load i32, ptr %78, align 64
  switch i32 %79, label %110 [
    i32 1, label %80
    i32 9, label %80
    i32 3, label %109
    i32 5, label %109
    i32 7, label %109
  ]

80:                                               ; preds = %77, %77
  %81 = load i32, ptr %5, align 4
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ata_device, ptr %75, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 131072
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %83
  %89 = load volatile i32, ptr @jiffies, align 64
  %90 = call i32 @__msecs_to_jiffies(i32 noundef %81) #19
  %91 = add i32 %90, %89
  %92 = getelementptr inbounds %struct.ata_device, ptr %75, i32 0, i32 10
  store i32 %91, ptr %92, align 4
  %93 = load ptr, ptr %75, align 64
  %94 = getelementptr inbounds %struct.ata_device, ptr %75, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr %struct.ata_link, ptr %93, i32 0, i32 11, i32 4, i32 %95
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, 32
  store i32 %98, ptr %96, align 4
  call void @ata_port_schedule_eh(ptr noundef %19) #19
  %99 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 41
  call void @complete(ptr noundef %99) #19
  br label %110

100:                                              ; preds = %80
  switch i32 %81, label %110 [
    i32 -1, label %101
    i32 -2, label %105
  ]

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.ata_device, ptr %75, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, -131073
  store i32 %104, ptr %102, align 4
  br label %110

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.ata_device, ptr %75, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, 131072
  store i32 %108, ptr %106, align 4
  br label %110

109:                                              ; preds = %77, %77, %77
  br label %110

110:                                              ; preds = %109, %105, %101, %100, %88, %83, %77, %74, %64, %60, %42, %38, %34, %30, %26
  %111 = phi i32 [ -95, %83 ], [ -19, %26 ], [ -19, %30 ], [ -19, %34 ], [ -19, %38 ], [ -19, %42 ], [ -19, %60 ], [ -19, %64 ], [ -19, %74 ], [ -19, %77 ], [ -95, %109 ], [ %16, %88 ], [ %16, %100 ], [ %16, %105 ], [ %16, %101 ]
  %112 = load ptr, ptr %20, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %22) #19
  br label %113

113:                                              ; preds = %110, %9, %4
  %114 = phi i32 [ %7, %4 ], [ -22, %9 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_set_sense(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 29
  %11 = and i32 %10, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %11, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #19
  br label %12

12:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_build_sense(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_set_sense_information(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = tail call i64 @ata_tf_read_block(ptr noundef %2, ptr noundef %0) #19
  %7 = icmp eq i64 %6, -1
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @scsi_set_sense_information(ptr noundef %10, i32 noundef 96, i64 noundef %6) #19
  br label %12

12:                                               ; preds = %8, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ata_tf_read_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_set_sense_information(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define dso_local i32 @ata_std_bios_param(ptr nocapture readnone %0, ptr nocapture readnone %1, i64 noundef %2, ptr nocapture noundef writeonly %3) #3 {
  store i32 255, ptr %3, align 4
  %5 = getelementptr i32, ptr %3, i32 1
  store i32 63, ptr %5, align 4
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9040225091336153120, i64 %2, i32 0) #20, !srcloc !17
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = extractvalue { i64, i32 } %6, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9040225091336153120, i64 %2, i64 %7, i32 %8) #20, !srcloc !18
  %10 = extractvalue { i64, i32 } %9, 0
  %11 = lshr i64 %10, 13
  %12 = trunc i64 %11 to i32
  %13 = getelementptr i32, ptr %3, i32 2
  store i32 %12, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_unlock_native_capacity(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 27
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %79, !prof !8

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %27, label %79, !prof !8

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %79, !prof !8

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %49, label %79, !prof !8

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %29 = load i32, ptr %28, align 4
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %79, !prof !8

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %33 = load ptr, ptr %32, align 64
  %34 = icmp eq ptr %33, %4
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 26
  %37 = load ptr, ptr %36, align 64
  %38 = icmp eq ptr %37, %32
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %39
  %46 = phi i32 [ 1, %44 ], [ 2, %39 ]
  %47 = icmp ugt i32 %46, %29
  %48 = getelementptr %struct.ata_port, ptr %4, i32 0, i32 25, i32 14, i32 %29
  br i1 %47, label %59, label %79

49:                                               ; preds = %23
  %50 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, -1
  %53 = icmp sgt i32 %9, %51
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %79, !prof !9

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 28
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr %struct.ata_link, ptr %57, i32 %51, i32 14
  br label %59

59:                                               ; preds = %55, %45
  %60 = phi ptr [ %58, %55 ], [ %48, %45 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %79, label %62, !prof !10

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.ata_device, ptr %60, i32 0, i32 9
  %64 = load i32, ptr %63, align 64
  switch i32 %64, label %79 [
    i32 7, label %65
    i32 5, label %65
    i32 3, label %65
    i32 1, label %65
    i32 9, label %65
  ]

65:                                               ; preds = %62, %62, %62, %62, %62
  %66 = getelementptr inbounds %struct.ata_device, ptr %60, i32 0, i32 7
  %67 = load i64, ptr %66, align 16
  %68 = getelementptr inbounds %struct.ata_device, ptr %60, i32 0, i32 8
  %69 = load i64, ptr %68, align 8
  %70 = icmp ult i64 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ata_device, ptr %60, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = or i32 %73, 262144
  store i32 %74, ptr %72, align 4
  %75 = load ptr, ptr %60, align 64
  %76 = getelementptr inbounds %struct.ata_link, ptr %75, i32 0, i32 11, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = or i32 %77, 6
  store i32 %78, ptr %76, align 4
  tail call void @ata_port_schedule_eh(ptr noundef %4) #19
  br label %79

79:                                               ; preds = %71, %65, %62, %59, %49, %45, %27, %23, %19, %15, %11
  %80 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %80, i32 noundef %7) #19
  tail call void @ata_port_wait_eh(ptr noundef %4) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ata_scsi_find_dev(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %60, !prof !8

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %22, label %60, !prof !8

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %60, !prof !8

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %44, label %60, !prof !8

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %24 = load i32, ptr %23, align 4
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %60, !prof !8

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %28 = load ptr, ptr %27, align 64
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 26
  %32 = load ptr, ptr %31, align 64
  %33 = icmp eq ptr %32, %27
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ 1, %39 ], [ 2, %34 ]
  %42 = icmp ugt i32 %41, %24
  %43 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 %24
  br i1 %42, label %54, label %60

44:                                               ; preds = %18
  %45 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = icmp sgt i32 %46, -1
  %48 = icmp sgt i32 %4, %46
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %60, !prof !9

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 28
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr %struct.ata_link, ptr %52, i32 %46, i32 14
  br label %54

54:                                               ; preds = %50, %40
  %55 = phi ptr [ %53, %50 ], [ %43, %40 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57, !prof !10

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ata_device, ptr %55, i32 0, i32 9
  %59 = load i32, ptr %58, align 64
  switch i32 %59, label %60 [
    i32 7, label %61
    i32 5, label %61
    i32 3, label %61
    i32 1, label %61
    i32 9, label %61
  ]

60:                                               ; preds = %57, %54, %44, %40, %22, %18, %14, %10, %6
  br label %61

61:                                               ; preds = %60, %57, %57, %57, %57, %57
  %62 = phi ptr [ null, %60 ], [ %55, %57 ], [ %55, %57 ], [ %55, %57 ], [ %55, %57 ], [ %55, %57 ]
  ret ptr %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_schedule_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_wait_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_cmd_ioctl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [96 x i8], align 1
  %4 = alloca [16 x i8], align 1
  %5 = alloca [4 x i8], align 4
  %6 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store i64 0, ptr %6, align 8, !annotation !16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %128, label %8

8:                                                ; preds = %2
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 4, i32 -1090519040) #20
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !8

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #19
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #21, !srcloc !19
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #19, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef 4) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !8

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 4, %8 ]
  %22 = sub i32 4, %21
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #19
  br label %128

24:                                               ; preds = %12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %3, i8 0, i32 96, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  %25 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = zext i8 %26 to i32
  %30 = shl nuw nsw i32 %29, 9
  %31 = call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3264) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %125, label %33

33:                                               ; preds = %28, %24
  %34 = phi i8 [ 8, %28 ], [ 6, %24 ]
  %35 = phi i8 [ 14, %28 ], [ 32, %24 ]
  %36 = phi ptr [ %31, %28 ], [ null, %24 ]
  %37 = phi i32 [ %30, %28 ], [ 0, %24 ]
  %38 = phi i32 [ 2, %28 ], [ 3, %24 ]
  %39 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 1
  store i8 %34, ptr %39, align 1
  %40 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 2
  store i8 %35, ptr %40, align 1
  store i8 -123, ptr %4, align 1
  %41 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 4
  store i8 %42, ptr %43, align 1
  %44 = load i8, ptr %5, align 4
  %45 = icmp eq i8 %44, -80
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load i8, ptr %25, align 1
  %48 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 8
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 10
  store i8 79, ptr %51, align 1
  %52 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 12
  store i8 -62, ptr %52, align 1
  br label %56

53:                                               ; preds = %33
  %54 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  %55 = load i8, ptr %54, align 1
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i8 [ %47, %46 ], [ %55, %53 ]
  %58 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 6
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 14
  store i8 %44, ptr %59, align 1
  %60 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %38, ptr noundef %36, i32 noundef %37, ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef 1000, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #19
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %125, label %62

62:                                               ; preds = %56
  %63 = load i8, ptr %6, align 8
  %64 = and i8 %63, 112
  %65 = icmp eq i8 %64, 112
  br i1 %65, label %66, label %105

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %3, i32 8
  %68 = and i32 %60, 254
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 1
  %74 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 2
  %75 = load i8, ptr %74, align 2
  %76 = icmp eq i8 %75, 0
  %77 = select i1 %73, i1 %76, i1 false
  %78 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, 29
  %81 = select i1 %77, i1 %80, i1 false
  %82 = and i32 %60, -3
  %83 = select i1 %81, i32 %82, i32 %60
  br label %84

84:                                               ; preds = %70, %66
  %85 = phi i32 [ %60, %66 ], [ %83, %70 ]
  %86 = load i8, ptr %3, align 1
  %87 = icmp eq i8 %86, 114
  %88 = load i8, ptr %67, align 1
  %89 = icmp eq i8 %88, 9
  %90 = select i1 %87, i1 %89, i1 false
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = getelementptr inbounds i8, ptr %3, i32 21
  %93 = load i8, ptr %92, align 1
  store i8 %93, ptr %5, align 4
  %94 = getelementptr inbounds i8, ptr %3, i32 11
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds [4 x i8], ptr %5, i32 0, i32 1
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds i8, ptr %3, i32 13
  %98 = load i8, ptr %97, align 1
  store i8 %98, ptr %41, align 2
  %99 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #21, !srcloc !19
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %102 = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 4) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 0, i32 -14
  br label %105

105:                                              ; preds = %91, %84, %62
  %106 = phi i32 [ 0, %62 ], [ 0, %84 ], [ %104, %91 ]
  %107 = phi i32 [ %60, %62 ], [ %85, %84 ], [ %85, %91 ]
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %105
  %110 = icmp eq ptr %36, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %109
  %112 = getelementptr i8, ptr %1, i32 4
  %113 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %112, i32 %37, i32 -1090519040) #20, !srcloc !22
  %114 = extractvalue { i32, i32 } %113, 0
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #21, !srcloc !19
  %118 = and i32 %117, -13
  %119 = or i32 %118, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %120 = call i32 @arm_copy_to_user(ptr noundef %112, ptr noundef nonnull %36, i32 noundef %37) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %117) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  br label %121

121:                                              ; preds = %116, %111
  %122 = phi i32 [ %120, %116 ], [ %37, %111 ]
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 %106, i32 -14
  br label %125

125:                                              ; preds = %121, %109, %105, %56, %28
  %126 = phi i32 [ %106, %109 ], [ -12, %28 ], [ %60, %56 ], [ -5, %105 ], [ %124, %121 ]
  %127 = phi ptr [ null, %109 ], [ null, %28 ], [ %36, %56 ], [ %36, %105 ], [ %36, %121 ]
  call void @kfree(ptr noundef %127) #19
  br label %128

128:                                              ; preds = %125, %20, %2
  %129 = phi i32 [ %126, %125 ], [ -22, %2 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #19
  ret i32 %129
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_task_ioctl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [96 x i8], align 1
  %4 = alloca [16 x i8], align 1
  %5 = alloca [7 x i8], align 1
  %6 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %5, i8 0, i32 7, i1 false), !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store i64 0, ptr %6, align 8, !annotation !16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %106, label %8

8:                                                ; preds = %2
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 7, i32 -1090519040) #20
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !8

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #19
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #21, !srcloc !19
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #19, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef 7) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !8

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 7, %8 ]
  %22 = sub i32 7, %21
  %23 = getelementptr i8, ptr %5, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #19
  br label %106

24:                                               ; preds = %12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %3, i8 0, i32 96, i1 false)
  %25 = getelementptr inbounds i8, ptr %4, i32 3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %25, i8 0, i32 13, i1 false)
  store i8 -123, ptr %4, align 1
  %26 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 1
  store i8 6, ptr %26, align 1
  %27 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 2
  store i8 32, ptr %27, align 1
  %28 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 4
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 6
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 8
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 10
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 5
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 12
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds [7 x i8], ptr %5, i32 0, i32 6
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 79
  %46 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 13
  store i8 %45, ptr %46, align 1
  %47 = load i8, ptr %5, align 1
  %48 = getelementptr inbounds [16 x i8], ptr %4, i32 0, i32 14
  store i8 %47, ptr %48, align 1
  %49 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 3, ptr noundef null, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef 1000, i32 noundef 5, i64 noundef 0, i32 noundef 0, ptr noundef null) #19
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %106, label %51

51:                                               ; preds = %24
  %52 = load i8, ptr %6, align 8
  %53 = and i8 %52, 112
  %54 = icmp eq i8 %53, 112
  br i1 %54, label %55, label %101

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %3, i32 8
  %57 = and i32 %49, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 1
  %63 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 2
  %64 = load i8, ptr %63, align 2
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %62, i1 %65, i1 false
  %67 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 29
  %70 = select i1 %66, i1 %69, i1 false
  %71 = and i32 %49, -3
  %72 = select i1 %70, i32 %71, i32 %49
  br label %73

73:                                               ; preds = %59, %55
  %74 = phi i32 [ %49, %55 ], [ %72, %59 ]
  %75 = load i8, ptr %3, align 1
  %76 = icmp eq i8 %75, 114
  %77 = load i8, ptr %56, align 1
  %78 = icmp eq i8 %77, 9
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %101

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %3, i32 21
  %82 = load i8, ptr %81, align 1
  store i8 %82, ptr %5, align 1
  %83 = getelementptr inbounds i8, ptr %3, i32 11
  %84 = load i8, ptr %83, align 1
  store i8 %84, ptr %28, align 1
  %85 = getelementptr inbounds i8, ptr %3, i32 13
  %86 = load i8, ptr %85, align 1
  store i8 %86, ptr %31, align 1
  %87 = getelementptr inbounds i8, ptr %3, i32 15
  %88 = load i8, ptr %87, align 1
  store i8 %88, ptr %34, align 1
  %89 = getelementptr inbounds i8, ptr %3, i32 17
  %90 = load i8, ptr %89, align 1
  store i8 %90, ptr %37, align 1
  %91 = getelementptr inbounds i8, ptr %3, i32 19
  %92 = load i8, ptr %91, align 1
  store i8 %92, ptr %40, align 1
  %93 = getelementptr inbounds i8, ptr %3, i32 20
  %94 = load i8, ptr %93, align 1
  store i8 %94, ptr %43, align 1
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #21, !srcloc !19
  %96 = and i32 %95, -13
  %97 = or i32 %96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %98 = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 7) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 0, i32 -14
  br label %101

101:                                              ; preds = %80, %73, %51
  %102 = phi i32 [ 0, %51 ], [ 0, %73 ], [ %100, %80 ]
  %103 = phi i32 [ %49, %51 ], [ %74, %73 ], [ %74, %80 ]
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 %102, i32 -5
  br label %106

106:                                              ; preds = %101, %24, %20, %2
  %107 = phi i32 [ -22, %2 ], [ %49, %24 ], [ %105, %101 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #19
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sas_scsi_ioctl(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [40 x i8], align 1
  switch i32 %2, label %176 [
    i32 777, label %6
    i32 804, label %28
    i32 781, label %56
    i32 799, label %164
    i32 798, label %170
  ]

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #19
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 16
  %17 = lshr i32 %16, 20
  %18 = and i32 %17, 1
  br label %19

19:                                               ; preds = %14, %6
  %20 = phi i32 [ 1, %6 ], [ %18, %14 ]
  %21 = load ptr, ptr %7, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %9) #19
  %22 = tail call ptr @llvm.thread.pointer() #19
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #21, !srcloc !19
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #19, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %27 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %20, i32 -1090519041) #19, !srcloc !23
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #19, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  br label %176

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #19
  %32 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 16
  %34 = and i32 %33, 2097152
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %28
  %37 = icmp eq ptr %3, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = or i32 %33, 1048576
  store i32 %39, ptr %32, align 16
  br label %53

40:                                               ; preds = %36
  %41 = and i32 %33, -1048577
  store i32 %41, ptr %32, align 16
  br label %53

42:                                               ; preds = %28
  %43 = ptrtoint ptr %3 to i32
  %44 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 128
  %47 = icmp eq i32 %46, 0
  %48 = lshr i32 %33, 20
  %49 = and i32 %48, 1
  %50 = select i1 %47, i32 %49, i32 1
  %51 = icmp eq i32 %50, %43
  %52 = select i1 %51, i32 0, i32 -22
  br label %53

53:                                               ; preds = %42, %40, %38
  %54 = phi i32 [ 0, %38 ], [ 0, %40 ], [ %52, %42 ]
  %55 = load ptr, ptr %29, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %31) #19
  br label %176

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %114, !prof !8

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %66 = load i64, ptr %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %76, label %114, !prof !8

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %114, !prof !8

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 18
  %74 = load i64, ptr %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %98, label %114, !prof !8

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 16
  %78 = load i32, ptr %77, align 4
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %114, !prof !8

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %82 = load ptr, ptr %81, align 64
  %83 = icmp eq ptr %82, %0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ata_port, ptr %82, i32 0, i32 26
  %86 = load ptr, ptr %85, align 64
  %87 = icmp eq ptr %86, %81
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %80
  %89 = getelementptr inbounds %struct.ata_port, ptr %82, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %88
  %95 = phi i32 [ 1, %93 ], [ 2, %88 ]
  %96 = icmp ugt i32 %95, %78
  %97 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 %78
  br i1 %96, label %108, label %114

98:                                               ; preds = %72
  %99 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, -1
  %102 = icmp sgt i32 %58, %100
  %103 = select i1 %101, i1 %102, i1 false
  br i1 %103, label %104, label %114, !prof !9

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 28
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr %struct.ata_link, ptr %106, i32 %100, i32 14
  br label %108

108:                                              ; preds = %104, %94
  %109 = phi ptr [ %107, %104 ], [ %97, %94 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111, !prof !10

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.ata_device, ptr %109, i32 0, i32 9
  %113 = load i32, ptr %112, align 64
  switch i32 %113, label %114 [
    i32 7, label %115
    i32 5, label %115
    i32 3, label %115
    i32 1, label %115
    i32 9, label %115
  ]

114:                                              ; preds = %111, %108, %98, %94, %76, %72, %68, %64, %60
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  br label %162

115:                                              ; preds = %111, %111, %111, %111, %111
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(40) %5, i8 0, i32 40, i1 false) #19, !annotation !16
  %116 = getelementptr inbounds %struct.ata_device, ptr %109, i32 0, i32 25
  %117 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 512, i32 -1090519040) #20, !srcloc !22
  %118 = extractvalue { i32, i32 } %117, 0
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %115
  %121 = tail call ptr @llvm.thread.pointer() #19
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 3
  %123 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #21, !srcloc !19
  %124 = and i32 %123, -13
  %125 = or i32 %124, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %125) #19, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %126 = tail call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %116, i32 noundef 512) #19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #19, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %162

128:                                              ; preds = %120
  call void @ata_id_string(ptr noundef %116, ptr noundef nonnull %5, i32 noundef 27, i32 noundef 40) #19
  %129 = getelementptr i16, ptr %3, i32 27
  %130 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %129, i32 40, i32 -1090519040) #20, !srcloc !22
  %131 = extractvalue { i32, i32 } %130, 0
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %128
  %134 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #21, !srcloc !19
  %135 = and i32 %134, -13
  %136 = or i32 %135, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %136) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %137 = call i32 @arm_copy_to_user(ptr noundef %129, ptr noundef nonnull %5, i32 noundef 40) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %134) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %133
  call void @ata_id_string(ptr noundef %116, ptr noundef nonnull %5, i32 noundef 23, i32 noundef 8) #19
  %140 = getelementptr i16, ptr %3, i32 23
  %141 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %140, i32 8, i32 -1090519040) #20, !srcloc !22
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %139
  %145 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #21, !srcloc !19
  %146 = and i32 %145, -13
  %147 = or i32 %146, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %147) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %148 = call i32 @arm_copy_to_user(ptr noundef %140, ptr noundef nonnull %5, i32 noundef 8) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %145) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %144
  call void @ata_id_string(ptr noundef %116, ptr noundef nonnull %5, i32 noundef 10, i32 noundef 20) #19
  %151 = getelementptr i16, ptr %3, i32 10
  %152 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %151, i32 20, i32 -1090519040) #20, !srcloc !22
  %153 = extractvalue { i32, i32 } %152, 0
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %122) #21, !srcloc !19
  %157 = and i32 %156, -13
  %158 = or i32 %157, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %159 = call i32 @arm_copy_to_user(ptr noundef %151, ptr noundef nonnull %5, i32 noundef 20) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #19, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !21
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %160, i32 0, i32 -14
  br label %162

162:                                              ; preds = %155, %150, %144, %139, %133, %128, %120, %115, %114
  %163 = phi i32 [ -14, %120 ], [ -14, %133 ], [ -14, %144 ], [ -42, %114 ], [ -14, %115 ], [ -14, %128 ], [ -14, %139 ], [ -14, %150 ], [ %161, %155 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  br label %176

164:                                              ; preds = %4
  %165 = tail call zeroext i1 @capable(i32 noundef 21) #19
  br i1 %165, label %166, label %176

166:                                              ; preds = %164
  %167 = tail call zeroext i1 @capable(i32 noundef 17) #19
  br i1 %167, label %168, label %176

168:                                              ; preds = %166
  %169 = tail call i32 @ata_cmd_ioctl(ptr noundef %1, ptr noundef %3)
  br label %176

170:                                              ; preds = %4
  %171 = tail call zeroext i1 @capable(i32 noundef 21) #19
  br i1 %171, label %172, label %176

172:                                              ; preds = %170
  %173 = tail call zeroext i1 @capable(i32 noundef 17) #19
  br i1 %173, label %174, label %176

174:                                              ; preds = %172
  %175 = tail call i32 @ata_task_ioctl(ptr noundef %1, ptr noundef %3)
  br label %176

176:                                              ; preds = %174, %172, %170, %168, %166, %164, %162, %53, %19, %4
  %177 = phi i32 [ %175, %174 ], [ %169, %168 ], [ %163, %162 ], [ %54, %53 ], [ %27, %19 ], [ -13, %166 ], [ -13, %164 ], [ -13, %172 ], [ -13, %170 ], [ -25, %4 ]
  ret i32 %177
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_ioctl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %4, i32 0, i32 53
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @ata_sas_scsi_ioctl(ptr noundef %6, ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ata_scsi_sdev_config(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %3 = load i64, ptr %2, align 4
  %4 = or i64 %3, 622592
  store i64 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 50
  store i32 1, ptr %5, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.request, ptr %0, i32 1, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i8, ptr %3, align 1
  %5 = tail call i32 @atapi_cmd_type(i8 noundef zeroext %4) #19
  %6 = icmp eq i32 %5, 4
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atapi_cmd_type(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_dev_config(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 25
  %6 = getelementptr %struct.ata_device, ptr %1, i32 0, i32 25, i32 0, i32 40
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, -1
  %9 = and i16 %7, 32640
  %10 = icmp eq i16 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = getelementptr %struct.ata_device, ptr %1, i32 0, i32 25, i32 0, i32 42
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, -8192
  %16 = icmp eq i16 %15, 24576
  br i1 %16, label %21, label %17

17:                                               ; preds = %12, %2
  %18 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 131072
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 16
  %23 = load i32, ptr %22, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %4, i32 noundef %23) #19
  %24 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 9
  %25 = load i32, ptr %24, align 64
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 20
  store i32 512, ptr %28, align 4
  tail call void @blk_queue_update_dma_pad(ptr noundef %4, i32 noundef 3) #19
  %29 = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 32, i32 21
  %30 = load i16, ptr %29, align 4
  %31 = add i16 %30, -1
  tail call void @blk_queue_max_segments(ptr noundef %4, i16 noundef zeroext %31) #19
  %32 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 60
  store i32 16384, ptr %32, align 8
  %33 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3072, i32 noundef 2) #22
  %34 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 61
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, ptr %28, align 4
  br label %70

38:                                               ; preds = %27
  %39 = load ptr, ptr %1, align 64
  %40 = load ptr, ptr %39, align 64
  %41 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, %44
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %42, i32 noundef %47) #23
  br label %122

49:                                               ; preds = %21
  %50 = getelementptr %struct.ata_device, ptr %1, i32 0, i32 25, i32 0, i32 53
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, -12288
  %53 = icmp eq i16 %52, 20480
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr %struct.ata_device, ptr %1, i32 0, i32 25, i32 0, i32 59
  %56 = load i16, ptr %55, align 2
  %57 = zext i16 %56 to i32
  %58 = getelementptr i16, ptr %5, i32 117
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = shl i32 %57, 17
  %62 = shl nuw nsw i32 %60, 1
  %63 = or i32 %62, %61
  br label %64

64:                                               ; preds = %54, %49
  %65 = phi i32 [ %63, %54 ], [ 512, %49 ]
  %66 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 20
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %68 = load i64, ptr %67, align 4
  %69 = or i64 %68, 268435456
  store i64 %69, ptr %67, align 4
  br label %70

70:                                               ; preds = %64, %36
  %71 = phi i32 [ %37, %36 ], [ %65, %64 ]
  %72 = icmp ugt i32 %71, 4096
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 20
  %75 = load ptr, ptr %1, align 64
  %76 = load ptr, ptr %75, align 64
  %77 = getelementptr inbounds %struct.ata_port, ptr %76, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ata_link, ptr %75, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %78, i32 noundef %83, i32 noundef %71) #23
  %85 = load i32, ptr %74, align 4
  br label %86

86:                                               ; preds = %73, %70
  %87 = phi i32 [ %85, %73 ], [ %71, %70 ]
  %88 = add i32 %87, -1
  tail call void @blk_queue_update_dma_alignment(ptr noundef %4, i32 noundef %88) #19
  %89 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 128
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 46
  tail call void @_set_bit(i32 noundef 1, ptr noundef %94) #19
  %95 = load i32, ptr %89, align 4
  br label %96

96:                                               ; preds = %93, %86
  %97 = phi i32 [ %95, %93 ], [ %90, %86 ]
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr inbounds %struct.Scsi_Host, ptr %101, i32 0, i32 26
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr [256 x i16], ptr %5, i32 0, i32 75
  %105 = load i16, ptr %104, align 2
  %106 = and i16 %105, 31
  %107 = add nuw nsw i16 %106, 1
  %108 = zext i16 %107 to i32
  %109 = tail call i32 @llvm.smin.i32(i32 %103, i32 %108)
  %110 = tail call i32 @scsi_change_queue_depth(ptr noundef %0, i32 noundef %109) #19
  %111 = load i32, ptr %89, align 4
  br label %112

112:                                              ; preds = %100, %96
  %113 = phi i32 [ %111, %100 ], [ %97, %96 ]
  %114 = and i32 %113, 256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %118 = load i64, ptr %117, align 4
  %119 = or i64 %118, 549755813888
  store i64 %119, ptr %117, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 4
  store ptr %0, ptr %121, align 16
  br label %122

122:                                              ; preds = %120, %38
  %123 = phi i32 [ 0, %120 ], [ -12, %38 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_update_dma_pad(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_update_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_slave_config(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 27
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %56, !prof !8

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %24, label %56, !prof !8

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %56, !prof !8

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %46, label %56, !prof !8

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %56, !prof !8

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %30 = load ptr, ptr %29, align 64
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 26
  %34 = load ptr, ptr %33, align 64
  %35 = icmp eq ptr %34, %29
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %28
  %37 = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %32
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ 1, %41 ], [ 2, %36 ]
  %44 = icmp ugt i32 %43, %26
  %45 = getelementptr %struct.ata_port, ptr %4, i32 0, i32 25, i32 14, i32 %26
  br i1 %44, label %61, label %56

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = icmp sgt i32 %48, -1
  %50 = icmp sgt i32 %6, %48
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %56, !prof !9

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 28
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr %struct.ata_link, ptr %54, i32 %48, i32 14
  br label %61

56:                                               ; preds = %46, %42, %24, %20, %16, %12, %8
  %57 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %58 = load i64, ptr %57, align 4
  %59 = or i64 %58, 622592
  store i64 %59, ptr %57, align 4
  %60 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 50
  store i32 1, ptr %60, align 8
  br label %70

61:                                               ; preds = %52, %42
  %62 = phi ptr [ %55, %52 ], [ %45, %42 ]
  %63 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %64 = load i64, ptr %63, align 4
  %65 = or i64 %64, 622592
  store i64 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 50
  store i32 1, ptr %66, align 8
  %67 = icmp eq ptr %62, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = tail call i32 @ata_scsi_dev_config(ptr noundef %0, ptr noundef nonnull %62)
  br label %70

70:                                               ; preds = %68, %61, %56
  %71 = phi i32 [ %69, %68 ], [ 0, %61 ], [ 0, %56 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_slave_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 53
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port_operations, ptr %6, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %80, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #19
  %14 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 27
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %76, !prof !8

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %76, !prof !8

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %76, !prof !8

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 18
  %31 = load i64, ptr %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %55, label %76, !prof !8

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %76, !prof !8

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %39 = load ptr, ptr %38, align 64
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 26
  %43 = load ptr, ptr %42, align 64
  %44 = icmp eq ptr %43, %38
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %41
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i32 [ 1, %50 ], [ 2, %45 ]
  %53 = icmp ugt i32 %52, %35
  %54 = getelementptr %struct.ata_port, ptr %4, i32 0, i32 25, i32 14, i32 %35
  br i1 %53, label %65, label %76

55:                                               ; preds = %29
  %56 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 17
  %57 = load i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, -1
  %59 = icmp sgt i32 %15, %57
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %76, !prof !9

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 28
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr %struct.ata_link, ptr %63, i32 %57, i32 14
  br label %65

65:                                               ; preds = %61, %51
  %66 = phi ptr [ %64, %61 ], [ %54, %51 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.ata_device, ptr %66, i32 0, i32 4
  %70 = load ptr, ptr %69, align 16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  store ptr null, ptr %69, align 16
  %73 = getelementptr inbounds %struct.ata_device, ptr %66, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 16777216
  store i32 %75, ptr %73, align 4
  tail call void @ata_port_schedule_eh(ptr noundef %4) #19
  br label %76

76:                                               ; preds = %72, %68, %65, %55, %51, %33, %29, %25, %21, %17
  %77 = load ptr, ptr %11, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %77, i32 noundef %13) #19
  %78 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 61
  %79 = load ptr, ptr %78, align 4
  tail call void @kfree(ptr noundef %79) #19
  br label %80

80:                                               ; preds = %76, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ata_scsi_queuecmd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %7 = load i16, ptr %6, align 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %113, label %9, !prof !10

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 9
  %11 = load i32, ptr %10, align 64
  switch i32 %11, label %17 [
    i32 1, label %12
    i32 9, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = zext i16 %7 to i32
  %14 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 17
  %15 = load i32, ptr %14, align 8
  %16 = icmp ult i32 %15, %13
  br i1 %16, label %113, label %38, !prof !10

17:                                               ; preds = %9
  %18 = icmp ne i8 %5, -123
  %19 = load i32, ptr @atapi_passthru16, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %36, !prof !8

22:                                               ; preds = %17
  %23 = lshr i8 %5, 5
  %24 = zext i8 %23 to i32
  %25 = getelementptr [8 x i8], ptr @scsi_command_size_tbl, i32 0, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i16
  %28 = icmp ult i16 %7, %27
  br i1 %28, label %113, label %29, !prof !10

29:                                               ; preds = %22
  %30 = zext i8 %26 to i32
  %31 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 17
  %32 = load i32, ptr %31, align 8
  %33 = icmp ult i32 %32, %30
  %34 = icmp ugt i16 %7, 16
  %35 = select i1 %33, i1 true, i1 %34, !prof !10
  br i1 %35, label %113, label %42

36:                                               ; preds = %17
  %37 = icmp ugt i16 %7, 16
  br i1 %37, label %113, label %38, !prof !10

38:                                               ; preds = %36, %12
  %39 = phi i8 [ %5, %12 ], [ -123, %36 ]
  %40 = tail call fastcc ptr @ata_get_xlat_func(ptr noundef %1, i8 noundef zeroext %39)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %112, label %42

42:                                               ; preds = %38, %29
  %43 = phi ptr [ %40, %38 ], [ @atapi_xlat, %29 ]
  %44 = load ptr, ptr %1, align 64
  %45 = load ptr, ptr %44, align 64
  %46 = getelementptr i8, ptr %0, i32 -148
  %47 = load i32, ptr %46, align 4
  %48 = tail call ptr @ata_qc_new_init(ptr noundef %1, i32 noundef %47) #19
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.ata_queued_cmd, ptr %48, i32 0, i32 2
  store ptr %0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ata_queued_cmd, ptr %48, i32 0, i32 3
  store ptr @scsi_done, ptr %52, align 4
  %53 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ata_queued_cmd, ptr %48, i32 0, i32 17
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ata_queued_cmd, ptr %48, i32 0, i32 9
  store i32 %57, ptr %58, align 4
  %59 = getelementptr i8, ptr %0, i32 -152
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.ata_queued_cmd, ptr %48, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 64
  store i32 %66, ptr %64, align 4
  br label %69

67:                                               ; preds = %42
  %68 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 40, ptr %68, align 4
  tail call void @scsi_done(ptr noundef %0) #19
  br label %115

69:                                               ; preds = %63, %50
  %70 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 15
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, -1
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %95

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90, !prof !10

78:                                               ; preds = %74
  %79 = load ptr, ptr %1, align 64
  %80 = load ptr, ptr %79, align 64
  %81 = getelementptr inbounds %struct.ata_port, ptr %80, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ata_link, ptr %79, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, %84
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %82, i32 noundef %87) #23
  tail call void @ata_qc_free(ptr noundef nonnull %48) #19
  %89 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 458752, ptr %89, align 4
  tail call void @scsi_done(ptr noundef %0) #19
  br label %115

90:                                               ; preds = %74
  %91 = load ptr, ptr %53, align 4
  %92 = load i32, ptr %56, align 4
  tail call void @ata_sg_init(ptr noundef nonnull %48, ptr noundef %91, i32 noundef %92) #19
  %93 = load i32, ptr %70, align 4
  %94 = getelementptr inbounds %struct.ata_queued_cmd, ptr %48, i32 0, i32 11
  store i32 %93, ptr %94, align 4
  br label %95

95:                                               ; preds = %90, %69
  %96 = getelementptr inbounds %struct.ata_queued_cmd, ptr %48, i32 0, i32 22
  store ptr @ata_scsi_qc_complete, ptr %96, align 4
  %97 = tail call i32 %43(ptr noundef nonnull %48) #19
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = tail call i32 %102(ptr noundef nonnull %48) #19
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104, %99
  tail call void @ata_qc_issue(ptr noundef nonnull %48) #19
  br label %115

108:                                              ; preds = %95
  tail call void @ata_qc_free(ptr noundef nonnull %48) #19
  tail call void @scsi_done(ptr noundef %0) #19
  br label %115

109:                                              ; preds = %104
  tail call void @ata_qc_free(ptr noundef nonnull %48) #19
  %110 = icmp eq i32 %105, 1
  %111 = select i1 %110, i32 4182, i32 4181
  br label %115

112:                                              ; preds = %38
  tail call void @ata_scsi_simulate(ptr noundef %1, ptr noundef %0)
  br label %115

113:                                              ; preds = %36, %29, %22, %12, %2
  %114 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 458752, ptr %114, align 4
  tail call void @scsi_done(ptr noundef %0) #19
  br label %115

115:                                              ; preds = %113, %112, %109, %108, %107, %78, %67
  %116 = phi i32 [ 0, %113 ], [ 0, %112 ], [ 0, %108 ], [ 0, %107 ], [ 0, %67 ], [ 0, %78 ], [ %111, %109 ]
  ret i32 %116
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc ptr @ata_get_xlat_func(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #8 {
  switch i8 %1, label %35 [
    i8 8, label %36
    i8 40, label %36
    i8 -120, label %36
    i8 10, label %36
    i8 42, label %36
    i8 -118, label %36
    i8 -109, label %3
    i8 53, label %4
    i8 47, label %23
    i8 -113, label %23
    i8 -95, label %24
    i8 -123, label %24
    i8 127, label %25
    i8 21, label %26
    i8 85, label %26
    i8 -107, label %27
    i8 -108, label %28
    i8 -94, label %29
    i8 -75, label %29
    i8 27, label %34
  ]

3:                                                ; preds = %2
  br label %36

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %6 = getelementptr i16, ptr %5, i32 87
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, -16384
  %9 = icmp eq i16 %8, 16384
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr i16, ptr %5, i32 85
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 32
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10, %4
  %16 = getelementptr i16, ptr %5, i32 83
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, -12288
  %19 = icmp eq i16 %18, 20480
  %20 = and i16 %17, -8192
  %21 = icmp eq i16 %20, 24576
  %22 = or i1 %19, %21
  br i1 %22, label %36, label %35

23:                                               ; preds = %2, %2
  br label %36

24:                                               ; preds = %2, %2
  br label %36

25:                                               ; preds = %2
  br label %36

26:                                               ; preds = %2, %2
  br label %36

27:                                               ; preds = %2
  br label %36

28:                                               ; preds = %2
  br label %36

29:                                               ; preds = %2, %2
  %30 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %36

34:                                               ; preds = %2
  br label %36

35:                                               ; preds = %29, %15, %2
  br label %36

36:                                               ; preds = %35, %34, %29, %28, %27, %26, %25, %24, %23, %15, %10, %3, %2, %2, %2, %2, %2, %2
  %37 = phi ptr [ null, %35 ], [ @ata_scsi_start_stop_xlat, %34 ], [ @ata_scsi_zbc_out_xlat, %28 ], [ @ata_scsi_zbc_in_xlat, %27 ], [ @ata_scsi_mode_select_xlat, %26 ], [ @ata_scsi_var_len_cdb_xlat, %25 ], [ @ata_scsi_pass_thru, %24 ], [ @ata_scsi_verify_xlat, %23 ], [ @ata_scsi_write_same_xlat, %3 ], [ @ata_scsi_rw_xlat, %2 ], [ @ata_scsi_rw_xlat, %2 ], [ @ata_scsi_rw_xlat, %2 ], [ @ata_scsi_rw_xlat, %2 ], [ @ata_scsi_rw_xlat, %2 ], [ @ata_scsi_rw_xlat, %2 ], [ @ata_scsi_security_inout_xlat, %29 ], [ @ata_scsi_flush_xlat, %15 ], [ @ata_scsi_flush_xlat, %10 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atapi_xlat(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ata_device, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 4096
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ %13, %9 ], [ true, %1 ]
  %16 = phi i1 [ %13, %9 ], [ false, %1 ]
  %17 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 5
  %18 = getelementptr inbounds %struct.ata_device, ptr %5, i32 0, i32 17
  %19 = load i32, ptr %18, align 8
  tail call void @llvm.memset.p0.i32(ptr align 4 %17, i8 0, i32 %19, i1 false)
  %20 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %17, ptr align 1 %21, i32 %24, i1 false)
  %25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 22
  store ptr @atapi_qc_complete, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 6
  store i32 %28, ptr %26, align 4
  %29 = load i32, ptr %6, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %14
  %32 = or i32 %27, 14
  store i32 %32, ptr %26, align 4
  br label %33

33:                                               ; preds = %31, %14
  %34 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 -96, ptr %34, align 1
  %35 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 27
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 14
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %36
  %41 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  br i1 %15, label %48, label %42

42:                                               ; preds = %33
  %43 = tail call i32 @atapi_check_dma(ptr noundef %0) #19
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %44, i1 true, i1 %16
  %46 = load i32, ptr %41, align 4
  %47 = load i32, ptr %37, align 4
  br label %48

48:                                               ; preds = %42, %33
  %49 = phi i32 [ %36, %33 ], [ %47, %42 ]
  %50 = phi i32 [ %40, %33 ], [ %46, %42 ]
  %51 = phi i1 [ %16, %33 ], [ %45, %42 ]
  %52 = tail call i32 @llvm.usub.sat.i32(i32 %50, i32 %49) #19
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 64512)
  %54 = and i32 %53, 1
  %55 = add nuw nsw i32 %54, %53
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %56, ptr %57, align 2
  %58 = lshr i32 %55, 8
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  br i1 %8, label %62, label %63

62:                                               ; preds = %48
  store i8 8, ptr %61, align 4
  br label %78

63:                                               ; preds = %48
  br i1 %51, label %64, label %65

64:                                               ; preds = %63
  store i8 9, ptr %61, align 4
  br label %78

65:                                               ; preds = %63
  store i8 10, ptr %61, align 4
  %66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  %67 = load i8, ptr %66, align 1
  %68 = or i8 %67, 1
  store i8 %68, ptr %66, align 1
  %69 = getelementptr inbounds %struct.ata_device, ptr %5, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %65
  %74 = load i32, ptr %6, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = or i8 %67, 5
  store i8 %77, ptr %66, align 1
  br label %78

78:                                               ; preds = %76, %73, %65, %64, %62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_simulate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [41 x i8], align 1
  %4 = alloca [9 x i8], align 1
  %5 = alloca %struct.ata_scsi_args, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  store ptr %0, ptr %5, align 4
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %9 = getelementptr inbounds %struct.ata_scsi_args, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ata_scsi_args, ptr %5, i32 0, i32 2
  store ptr %1, ptr %10, align 4
  %11 = load i8, ptr %7, align 1
  switch i8 %11, label %412 [
    i8 18, label %12
    i8 26, label %64
    i8 90, label %64
    i8 37, label %272
    i8 -98, label %284
    i8 -96, label %312
    i8 3, label %320
    i8 53, label %419
    i8 1, label %419
    i8 11, label %419
    i8 43, label %419
    i8 0, label %419
    i8 29, label %327
    i8 -93, label %351
  ]

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %7, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = icmp eq ptr %1, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 29
  %24 = and i32 %23, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %24, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %25

25:                                               ; preds = %20, %18
  %26 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %27, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %419

29:                                               ; preds = %12
  %30 = and i32 %15, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_std)
  br label %419

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %7, i32 2
  %35 = load i8, ptr %34, align 1
  switch i8 %35, label %63 [
    i8 0, label %36
    i8 -128, label %37
    i8 -125, label %38
    i8 -119, label %39
    i8 -80, label %40
    i8 -79, label %41
    i8 -78, label %42
    i8 -74, label %50
    i8 -71, label %57
  ]

36:                                               ; preds = %33
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_00)
  br label %419

37:                                               ; preds = %33
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_80)
  br label %419

38:                                               ; preds = %33
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_83)
  br label %419

39:                                               ; preds = %33
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_89)
  br label %419

40:                                               ; preds = %33
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_b0)
  br label %419

41:                                               ; preds = %33
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_b1)
  br label %419

42:                                               ; preds = %33
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(576) @ata_scsi_rbuf, i8 0, i32 576, i1 false) #19
  store i8 -78, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 1), align 1
  store i8 4, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 3), align 1
  store i8 64, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 5), align 1
  %44 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @sg_copy_from_buffer(ptr noundef %45, i32 noundef %47, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef 576) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %43) #19
  %49 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 0, ptr %49, align 4
  br label %419

50:                                               ; preds = %33
  %51 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1073741824
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_b6)
  br label %419

56:                                               ; preds = %50
  tail call fastcc void @ata_scsi_set_invalid_field(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 2, i8 noundef zeroext -1)
  br label %419

57:                                               ; preds = %33
  %58 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 33
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  call fastcc void @ata_scsi_rbuf_fill(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsiop_inq_b9)
  br label %419

62:                                               ; preds = %57
  tail call fastcc void @ata_scsi_set_invalid_field(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 2, i8 noundef zeroext -1)
  br label %419

63:                                               ; preds = %33
  tail call fastcc void @ata_scsi_set_invalid_field(ptr noundef %0, ptr noundef %1, i16 noundef zeroext 2, i8 noundef zeroext -1)
  br label %419

64:                                               ; preds = %2, %2
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(576) @ata_scsi_rbuf, i8 0, i32 576, i1 false) #19
  %66 = load ptr, ptr %6, align 4
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 26
  %69 = getelementptr i8, ptr %66, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 8
  %72 = icmp eq i8 %71, 0
  %73 = getelementptr i8, ptr %66, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = lshr i8 %74, 6
  %76 = icmp eq i8 %75, 3
  br i1 %76, label %254, label %77

77:                                               ; preds = %64
  %78 = xor i8 %71, 12
  %79 = xor i8 %71, 8
  %80 = add nuw nsw i8 %79, 8
  %81 = select i1 %68, i8 %78, i8 %80
  %82 = zext i8 %81 to i32
  %83 = getelementptr i8, ptr @ata_scsi_rbuf, i32 %82
  %84 = getelementptr i8, ptr %66, i32 3
  %85 = load i8, ptr %84, align 1
  %86 = add i8 %85, -1
  %87 = icmp ult i8 %86, -2
  br i1 %87, label %242, label %88

88:                                               ; preds = %77
  %89 = and i8 %74, 63
  %90 = zext i8 %89 to i32
  switch i32 %90, label %242 [
    i32 1, label %91
    i32 8, label %98
    i32 10, label %132
    i32 63, label %147
  ]

91:                                               ; preds = %88
  %92 = icmp eq i8 %75, 1
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  store i16 2561, ptr %83, align 1
  %94 = getelementptr i8, ptr %83, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(10) %94, i8 0, i32 10, i1 false) #19
  br label %96

95:                                               ; preds = %91
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %83, ptr noundef nonnull align 1 dereferenceable(12) @def_rw_recovery_mpage, i32 12, i1 false) #19
  br label %96

96:                                               ; preds = %95, %93
  %97 = getelementptr i8, ptr %83, i32 12
  br label %196

98:                                               ; preds = %88
  %99 = icmp eq i8 %75, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  store i16 4616, ptr %83, align 1
  %101 = getelementptr i8, ptr %83, i32 2
  %102 = getelementptr i8, ptr %83, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(18) %102, i8 0, i32 17, i1 false) #19
  store i8 4, ptr %101, align 1
  br label %130

103:                                              ; preds = %98
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %83, ptr noundef nonnull align 1 dereferenceable(20) @def_cache_mpage, i32 20, i1 false) #19
  %104 = getelementptr i16, ptr %8, i32 87
  %105 = load i16, ptr %104, align 2
  %106 = and i16 %105, -16384
  %107 = icmp eq i16 %106, 16384
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = getelementptr i16, ptr %8, i32 85
  %110 = load i16, ptr %109, align 2
  %111 = trunc i16 %110 to i8
  %112 = lshr i8 %111, 3
  %113 = and i8 %112, 4
  br label %114

114:                                              ; preds = %108, %103
  %115 = phi i8 [ 0, %103 ], [ %113, %108 ]
  %116 = getelementptr i8, ptr %83, i32 2
  store i8 %115, ptr %116, align 1
  %117 = load i16, ptr %104, align 2
  %118 = and i16 %117, -16384
  %119 = icmp eq i16 %118, 16384
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = getelementptr i16, ptr %8, i32 85
  %122 = load i16, ptr %121, align 2
  %123 = trunc i16 %122 to i8
  %124 = lshr i8 %123, 1
  %125 = and i8 %124, 32
  %126 = xor i8 %125, 32
  br label %127

127:                                              ; preds = %120, %114
  %128 = phi i8 [ 32, %114 ], [ %126, %120 ]
  %129 = getelementptr i8, ptr %83, i32 12
  store i8 %128, ptr %129, align 1
  br label %130

130:                                              ; preds = %127, %100
  %131 = getelementptr i8, ptr %83, i32 20
  br label %196

132:                                              ; preds = %88
  %133 = icmp eq i8 %75, 1
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  store i16 2570, ptr %83, align 1
  %135 = getelementptr i8, ptr %83, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(10) %135, i8 0, i32 9, i1 false) #19
  br label %143

136:                                              ; preds = %132
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %83, ptr noundef nonnull align 1 dereferenceable(12) @def_control_mpage, i32 12, i1 false) #19
  %137 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = lshr i32 %138, 27
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 4
  %142 = or i8 %141, 2
  br label %143

143:                                              ; preds = %136, %134
  %144 = phi i8 [ 4, %134 ], [ %142, %136 ]
  %145 = getelementptr i8, ptr %83, i32 2
  store i8 %144, ptr %145, align 1
  %146 = getelementptr i8, ptr %83, i32 12
  br label %196

147:                                              ; preds = %88
  %148 = icmp eq i8 %75, 1
  br i1 %148, label %174, label %149

149:                                              ; preds = %147
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %83, ptr noundef nonnull align 1 dereferenceable(12) @def_rw_recovery_mpage, i32 12, i1 false) #19
  %150 = getelementptr i8, ptr %83, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %150, ptr noundef nonnull align 1 dereferenceable(20) @def_cache_mpage, i32 20, i1 false) #19
  %151 = getelementptr i16, ptr %8, i32 87
  %152 = load i16, ptr %151, align 2
  %153 = and i16 %152, -16384
  %154 = icmp eq i16 %153, 16384
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = getelementptr i16, ptr %8, i32 85
  %157 = load i16, ptr %156, align 2
  %158 = trunc i16 %157 to i8
  %159 = lshr i8 %158, 3
  %160 = and i8 %159, 4
  br label %161

161:                                              ; preds = %155, %149
  %162 = phi i8 [ 0, %149 ], [ %160, %155 ]
  %163 = getelementptr i8, ptr %150, i32 2
  store i8 %162, ptr %163, align 1
  %164 = load i16, ptr %151, align 2
  %165 = and i16 %164, -16384
  %166 = icmp eq i16 %165, 16384
  br i1 %166, label %167, label %182

167:                                              ; preds = %161
  %168 = getelementptr i16, ptr %8, i32 85
  %169 = load i16, ptr %168, align 2
  %170 = trunc i16 %169 to i8
  %171 = lshr i8 %170, 1
  %172 = and i8 %171, 32
  %173 = xor i8 %172, 32
  br label %182

174:                                              ; preds = %147
  store i16 2561, ptr %83, align 1
  %175 = getelementptr i8, ptr %83, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(10) %175, i8 0, i32 10, i1 false) #19
  %176 = getelementptr i8, ptr %83, i32 12
  store i16 4616, ptr %176, align 1
  %177 = getelementptr i8, ptr %176, i32 2
  %178 = getelementptr i8, ptr %176, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(18) %178, i8 0, i32 17, i1 false) #19
  store i8 4, ptr %177, align 1
  %179 = getelementptr i8, ptr %176, i32 20
  store i16 2570, ptr %179, align 1
  %180 = getelementptr i8, ptr %179, i32 2
  %181 = getelementptr i8, ptr %179, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(10) %181, i8 0, i32 9, i1 false) #19
  store i8 4, ptr %180, align 1
  br label %193

182:                                              ; preds = %167, %161
  %183 = phi i8 [ 32, %161 ], [ %173, %167 ]
  %184 = getelementptr i8, ptr %150, i32 12
  store i8 %183, ptr %184, align 1
  %185 = getelementptr i8, ptr %150, i32 20
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %185, ptr noundef nonnull align 1 dereferenceable(12) @def_control_mpage, i32 12, i1 false) #19
  %186 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = lshr i32 %187, 27
  %189 = getelementptr i8, ptr %185, i32 2
  %190 = trunc i32 %188 to i8
  %191 = and i8 %190, 4
  %192 = or i8 %191, 2
  store i8 %192, ptr %189, align 1
  br label %193

193:                                              ; preds = %182, %174
  %194 = getelementptr i8, ptr %83, i32 12
  %195 = getelementptr i8, ptr %194, i32 32
  br label %196

196:                                              ; preds = %193, %143, %130, %96
  %197 = phi ptr [ %195, %193 ], [ %146, %143 ], [ %131, %130 ], [ %97, %96 ]
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(41) %3, i8 0, i32 41, i1 false) #19, !annotation !16
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %4, i8 0, i32 9, i1 false) #19, !annotation !16
  %198 = load i32, ptr @libata_fua, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %196
  %201 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 42
  %202 = load i16, ptr %201, align 2
  %203 = and i16 %202, -16320
  %204 = icmp eq i16 %203, 16448
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  call void @ata_id_c_string(ptr noundef %8, ptr noundef nonnull %3, i32 noundef 27, i32 noundef 41) #19
  call void @ata_id_c_string(ptr noundef %8, ptr noundef nonnull %4, i32 noundef 23, i32 noundef 9) #19
  %206 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %3, ptr noundef nonnull dereferenceable(7) @.str.42, i32 7) #19
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %3) #19
  br label %213

209:                                              ; preds = %200, %196
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %3) #19
  br label %226

210:                                              ; preds = %205
  %211 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %4, ptr noundef nonnull dereferenceable(9) @.str.43, i32 9) #19
  %212 = icmp eq i32 %211, 0
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %3) #19
  br i1 %212, label %226, label %213

213:                                              ; preds = %210, %208
  %214 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 2
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %226, label %218

218:                                              ; preds = %213
  %219 = and i32 %215, 4096
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 15
  %223 = load i32, ptr %222, align 16
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221, %218
  br label %226

226:                                              ; preds = %225, %221, %213, %210, %209
  %227 = phi i8 [ 16, %225 ], [ 0, %221 ], [ 0, %213 ], [ 0, %210 ], [ 0, %209 ]
  %228 = ptrtoint ptr %197 to i32
  br i1 %68, label %229, label %234

229:                                              ; preds = %226
  %230 = trunc i32 %228 to i8
  %231 = add i8 %230, trunc (i32 xor (i32 ptrtoint (ptr @ata_scsi_rbuf to i32), i32 -1) to i8)
  store i8 %231, ptr @ata_scsi_rbuf, align 1
  %232 = load i8, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 2), align 1
  %233 = or i8 %232, %227
  store i8 %233, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 2), align 1
  br i1 %72, label %261, label %264

234:                                              ; preds = %226
  %235 = sub i32 %228, ptrtoint (ptr @ata_scsi_rbuf to i32)
  %236 = add i32 %235, -2
  %237 = lshr i32 %236, 8
  %238 = trunc i32 %237 to i8
  store i8 %238, ptr @ata_scsi_rbuf, align 1
  %239 = trunc i32 %236 to i8
  store i8 %239, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 1), align 1
  %240 = load i8, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 3), align 1
  %241 = or i8 %240, %227
  store i8 %241, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 3), align 1
  br i1 %72, label %261, label %264

242:                                              ; preds = %88, %77
  %243 = phi i16 [ 3, %77 ], [ 2, %88 ]
  %244 = icmp eq ptr %1, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %247 = load i32, ptr %246, align 4
  %248 = lshr i32 %247, 29
  %249 = and i32 %248, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %249, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %250

250:                                              ; preds = %245, %242
  %251 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %252 = load ptr, ptr %251, align 4
  %253 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %252, i32 noundef 96, i16 noundef zeroext %243, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %271

254:                                              ; preds = %64
  %255 = icmp eq ptr %1, null
  br i1 %255, label %271, label %256

256:                                              ; preds = %254
  %257 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %258 = load i32, ptr %257, align 4
  %259 = lshr i32 %258, 29
  %260 = and i32 %259, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %260, i8 noundef zeroext 5, i8 noundef zeroext 57, i8 noundef zeroext 0) #19
  br label %271

261:                                              ; preds = %234, %229
  %262 = phi ptr [ getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 3), %229 ], [ getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 7), %234 ]
  %263 = phi ptr [ getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 4), %229 ], [ getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 8), %234 ]
  store i8 8, ptr %262, align 1
  store i64 562949953421312, ptr %263, align 1
  br label %264

264:                                              ; preds = %261, %234, %229
  %265 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %268 = load i32, ptr %267, align 4
  %269 = call i32 @sg_copy_from_buffer(ptr noundef %266, i32 noundef %268, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef 576) #19
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %65) #19
  %270 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 0, ptr %270, align 4
  br label %419

271:                                              ; preds = %256, %254, %250
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %65) #19
  br label %419

272:                                              ; preds = %2
  %273 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(576) @ata_scsi_rbuf, i8 0, i32 576, i1 false) #19
  %274 = call fastcc i32 @ata_scsiop_read_cap(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsi_rbuf) #19
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %280 = load i32, ptr %279, align 4
  %281 = tail call i32 @sg_copy_from_buffer(ptr noundef %278, i32 noundef %280, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef 576) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %273) #19
  %282 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 0, ptr %282, align 4
  br label %419

283:                                              ; preds = %272
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %273) #19
  br label %419

284:                                              ; preds = %2
  %285 = getelementptr i8, ptr %7, i32 1
  %286 = load i8, ptr %285, align 1
  %287 = and i8 %286, 31
  %288 = icmp eq i8 %287, 16
  br i1 %288, label %289, label %301

289:                                              ; preds = %284
  %290 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(576) @ata_scsi_rbuf, i8 0, i32 576, i1 false) #19
  %291 = call fastcc i32 @ata_scsiop_read_cap(ptr noundef nonnull %5, ptr noundef nonnull @ata_scsi_rbuf) #19
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = tail call i32 @sg_copy_from_buffer(ptr noundef %295, i32 noundef %297, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef 576) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %290) #19
  %299 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 0, ptr %299, align 4
  br label %419

300:                                              ; preds = %289
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %290) #19
  br label %419

301:                                              ; preds = %284
  %302 = icmp eq ptr %1, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %301
  %304 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %305 = load i32, ptr %304, align 4
  %306 = lshr i32 %305, 29
  %307 = and i32 %306, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %307, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %308

308:                                              ; preds = %303, %301
  %309 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %310 = load ptr, ptr %309, align 4
  %311 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %310, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %419

312:                                              ; preds = %2
  %313 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(576) @ata_scsi_rbuf, i8 0, i32 576, i1 false) #19
  store i8 8, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 3), align 1
  %314 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %317 = load i32, ptr %316, align 4
  %318 = tail call i32 @sg_copy_from_buffer(ptr noundef %315, i32 noundef %317, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef 576) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %313) #19
  %319 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 0, ptr %319, align 4
  br label %419

320:                                              ; preds = %2
  %321 = icmp eq ptr %1, null
  br i1 %321, label %419, label %322

322:                                              ; preds = %320
  %323 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %324 = load i32, ptr %323, align 4
  %325 = lshr i32 %324, 29
  %326 = and i32 %325, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %326, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  br label %419

327:                                              ; preds = %2
  %328 = getelementptr i8, ptr %7, i32 1
  %329 = load i8, ptr %328, align 1
  %330 = and i8 %329, -9
  %331 = icmp eq i8 %330, 4
  br i1 %331, label %332, label %340

332:                                              ; preds = %327
  %333 = getelementptr i8, ptr %7, i32 3
  %334 = load i8, ptr %333, align 1
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %332
  %337 = getelementptr i8, ptr %7, i32 4
  %338 = load i8, ptr %337, align 1
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %419, label %340

340:                                              ; preds = %336, %332, %327
  %341 = icmp eq ptr %1, null
  br i1 %341, label %347, label %342

342:                                              ; preds = %340
  %343 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %344 = load i32, ptr %343, align 4
  %345 = lshr i32 %344, 29
  %346 = and i32 %345, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %346, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %347

347:                                              ; preds = %342, %340
  %348 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %349 = load ptr, ptr %348, align 4
  %350 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %349, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %419

351:                                              ; preds = %2
  %352 = getelementptr i8, ptr %7, i32 1
  %353 = load i8, ptr %352, align 1
  %354 = icmp eq i8 %353, 12
  br i1 %354, label %355, label %401

355:                                              ; preds = %351
  %356 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(576) @ata_scsi_rbuf, i8 0, i32 576, i1 false) #19
  %357 = load ptr, ptr %6, align 4
  %358 = getelementptr i8, ptr %357, i32 2
  %359 = load i8, ptr %358, align 1
  %360 = icmp eq i8 %359, 1
  br i1 %360, label %361, label %389

361:                                              ; preds = %355
  %362 = getelementptr i8, ptr %357, i32 3
  %363 = load i8, ptr %362, align 1
  switch i8 %363, label %381 [
    i8 18, label %364
    i8 26, label %364
    i8 90, label %364
    i8 37, label %364
    i8 -98, label %364
    i8 -96, label %364
    i8 3, label %364
    i8 53, label %364
    i8 1, label %364
    i8 11, label %364
    i8 43, label %364
    i8 0, label %364
    i8 29, label %364
    i8 -93, label %364
    i8 8, label %364
    i8 40, label %364
    i8 -120, label %364
    i8 10, label %364
    i8 42, label %364
    i8 -118, label %364
    i8 -95, label %364
    i8 -123, label %364
    i8 47, label %364
    i8 -113, label %364
    i8 21, label %364
    i8 85, label %364
    i8 27, label %364
    i8 -107, label %365
    i8 -108, label %365
    i8 -94, label %375
    i8 -75, label %375
  ]

364:                                              ; preds = %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361, %361
  br label %381

365:                                              ; preds = %361, %361
  %366 = getelementptr i16, ptr %8, i32 69
  %367 = load i16, ptr %366, align 2
  %368 = and i16 %367, 3
  %369 = icmp eq i16 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 9
  %372 = load i32, ptr %371, align 64
  %373 = icmp eq i32 %372, 9
  br i1 %373, label %374, label %381

374:                                              ; preds = %370, %365
  br label %381

375:                                              ; preds = %361, %361
  %376 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %377 = load i32, ptr %376, align 4
  %378 = and i32 %377, 256
  %379 = icmp eq i32 %378, 0
  %380 = select i1 %379, i8 0, i8 3
  br label %381

381:                                              ; preds = %375, %374, %370, %364, %361
  %382 = phi i8 [ %380, %375 ], [ 3, %364 ], [ 0, %370 ], [ 3, %374 ], [ 0, %361 ]
  store i8 %382, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 1), align 1
  %383 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %386 = load i32, ptr %385, align 4
  %387 = tail call i32 @sg_copy_from_buffer(ptr noundef %384, i32 noundef %386, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef 576) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %356) #19
  %388 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 0, ptr %388, align 4
  br label %419

389:                                              ; preds = %355
  %390 = zext i8 %359 to i32
  %391 = load ptr, ptr %0, align 64
  %392 = load ptr, ptr %391, align 64
  %393 = getelementptr inbounds %struct.ata_port, ptr %392, i32 0, i32 5
  %394 = load i32, ptr %393, align 4
  %395 = getelementptr inbounds %struct.ata_link, ptr %391, i32 0, i32 1
  %396 = load i32, ptr %395, align 4
  %397 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %398 = load i32, ptr %397, align 4
  %399 = add i32 %398, %396
  %400 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %394, i32 noundef %399, i32 noundef %390) #23
  store i8 0, ptr getelementptr inbounds ([576 x i8], ptr @ata_scsi_rbuf, i32 0, i32 1), align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %356) #19
  br label %419

401:                                              ; preds = %351
  %402 = icmp eq ptr %1, null
  br i1 %402, label %408, label %403

403:                                              ; preds = %401
  %404 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %405 = load i32, ptr %404, align 4
  %406 = lshr i32 %405, 29
  %407 = and i32 %406, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %407, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %408

408:                                              ; preds = %403, %401
  %409 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %410 = load ptr, ptr %409, align 4
  %411 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %410, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %419

412:                                              ; preds = %2
  %413 = icmp eq ptr %1, null
  br i1 %413, label %419, label %414

414:                                              ; preds = %412
  %415 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %416 = load i32, ptr %415, align 4
  %417 = lshr i32 %416, 29
  %418 = and i32 %417, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %418, i8 noundef zeroext 5, i8 noundef zeroext 32, i8 noundef zeroext 0) #19
  br label %419

419:                                              ; preds = %414, %412, %408, %389, %381, %347, %336, %322, %320, %312, %308, %300, %293, %283, %276, %271, %264, %63, %62, %61, %56, %55, %42, %41, %40, %39, %38, %37, %36, %32, %25, %2, %2, %2, %2, %2
  call void @scsi_done(ptr noundef %1) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_queuecmd(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 53
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #19
  %10 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %69, !prof !8

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 18
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %29, label %69, !prof !8

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 16
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %69, !prof !8

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 18
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %51, label %69, !prof !8

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 16
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %69, !prof !8

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25
  %35 = load ptr, ptr %34, align 64
  %36 = icmp eq ptr %35, %6
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 26
  %39 = load ptr, ptr %38, align 64
  %40 = icmp eq ptr %39, %34
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %37
  br label %47

47:                                               ; preds = %46, %41
  %48 = phi i32 [ 1, %46 ], [ 2, %41 ]
  %49 = icmp ugt i32 %48, %31
  %50 = getelementptr %struct.ata_port, ptr %6, i32 0, i32 25, i32 14, i32 %31
  br i1 %49, label %61, label %69

51:                                               ; preds = %25
  %52 = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 17
  %53 = load i32, ptr %52, align 4
  %54 = icmp sgt i32 %53, -1
  %55 = icmp sgt i32 %11, %53
  %56 = select i1 %54, i1 %55, i1 false
  br i1 %56, label %57, label %69, !prof !9

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 28
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr %struct.ata_link, ptr %59, i32 %53, i32 14
  br label %61

61:                                               ; preds = %57, %47
  %62 = phi ptr [ %60, %57 ], [ %50, %47 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64, !prof !10

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ata_device, ptr %62, i32 0, i32 9
  %66 = load i32, ptr %65, align 64
  switch i32 %66, label %69 [
    i32 7, label %67
    i32 5, label %67
    i32 3, label %67
    i32 1, label %67
    i32 9, label %67
  ]

67:                                               ; preds = %64, %64, %64, %64, %64
  %68 = tail call i32 @__ata_scsi_queuecmd(ptr noundef %1, ptr noundef nonnull %62)
  br label %71

69:                                               ; preds = %64, %61, %51, %47, %29, %25, %21, %17, %13
  %70 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  store i32 262144, ptr %70, align 4
  tail call void @scsi_done(ptr noundef %1) #19
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %73 = load ptr, ptr %7, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %9) #19
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_scsi_set_invalid_field(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 29
  %10 = and i32 %9, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %10, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %11

11:                                               ; preds = %6, %4
  %12 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %13, i32 noundef 96, i16 noundef zeroext %2, i8 noundef zeroext %3, i1 noundef zeroext true) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_scsi_rbuf_fill(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(576) @ata_scsi_rbuf, i8 0, i32 576, i1 false)
  %6 = tail call i32 %1(ptr noundef %0, ptr noundef nonnull @ata_scsi_rbuf) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @sg_copy_from_buffer(ptr noundef %10, i32 noundef %12, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef 576) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %5) #19
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 24
  store i32 0, ptr %14, align 4
  br label %16

15:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %5) #19
  br label %16

16:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsiop_inq_std(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i16, ptr %4, align 2
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  %8 = load ptr, ptr %0, align 4
  br i1 %7, label %9, label %16

9:                                                ; preds = %2
  %10 = load ptr, ptr %8, align 64
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 16
  %14 = and i32 %13, 4194304
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %2
  br label %17

17:                                               ; preds = %16, %9
  %18 = phi i8 [ -128, %16 ], [ 0, %9 ]
  %19 = getelementptr inbounds %struct.ata_device, ptr %8, i32 0, i32 9
  %20 = load i32, ptr %19, align 64
  %21 = icmp eq i32 %20, 9
  %22 = select i1 %21, i8 7, i8 5
  %23 = select i1 %21, i8 20, i8 0
  store i8 %23, ptr %1, align 1
  %24 = getelementptr inbounds i8, ptr %1, i32 1
  store i8 %18, ptr %24, align 1
  %25 = getelementptr inbounds i8, ptr %1, i32 2
  store i8 %22, ptr %25, align 1
  %26 = getelementptr inbounds i8, ptr %1, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %26, ptr noundef align 1 dereferenceable(5) getelementptr inbounds ([8 x i8], ptr @__const.ata_scsiop_inq_std.hdr, i32 0, i32 3), i32 5, i1 false)
  %27 = getelementptr i8, ptr %1, i32 8
  store i64 2314885530820629569, ptr %27, align 1
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %1, i32 16
  tail call void @ata_id_string(ptr noundef %28, ptr noundef %29, i32 noundef 27, i32 noundef 16) #19
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr i8, ptr %1, i32 32
  tail call void @ata_id_string(ptr noundef %30, ptr noundef %31, i32 noundef 25, i32 noundef 4) #19
  %32 = tail call i32 @strncmp(ptr noundef %31, ptr noundef nonnull dereferenceable(5) @.str.36, i32 noundef 4)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load ptr, ptr %3, align 4
  tail call void @ata_id_string(ptr noundef %35, ptr noundef %31, i32 noundef 23, i32 noundef 4) #19
  br label %36

36:                                               ; preds = %34, %17
  %37 = load i8, ptr %31, align 1
  switch i8 %37, label %39 [
    i8 0, label %38
    i8 32, label %38
  ]

38:                                               ; preds = %36, %36
  store i32 543240046, ptr %31, align 1
  br label %39

39:                                               ; preds = %38, %36
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i16, ptr %40, i32 69
  %42 = load i16, ptr %41, align 2
  %43 = and i16 %42, 3
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.ata_device, ptr %46, i32 0, i32 9
  %48 = load i32, ptr %47, align 64
  %49 = icmp eq i32 %48, 9
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %39
  %51 = getelementptr i8, ptr %1, i32 58
  store i64 2621306110837432320, ptr %51, align 1
  br label %54

52:                                               ; preds = %45
  %53 = getelementptr i8, ptr %1, i32 58
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %53, ptr noundef nonnull align 1 dereferenceable(6) @ata_scsiop_inq_std.versions, i32 6, i1 false)
  br label %54

54:                                               ; preds = %52, %50
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsiop_inq_00(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr i8, ptr %1, i32 4
  store i8 0, ptr %3, align 1
  %4 = getelementptr i8, ptr %1, i32 5
  store i8 -128, ptr %4, align 1
  %5 = getelementptr i8, ptr %1, i32 6
  store i8 -125, ptr %5, align 1
  %6 = getelementptr i8, ptr %1, i32 7
  store i8 -119, ptr %6, align 1
  %7 = getelementptr i8, ptr %1, i32 8
  store i8 -80, ptr %7, align 1
  %8 = getelementptr i8, ptr %1, i32 9
  store i8 -79, ptr %8, align 1
  %9 = getelementptr i8, ptr %1, i32 10
  store i8 -78, ptr %9, align 1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1073741824
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %1, i32 11
  store i8 -74, ptr %16, align 1
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi i32 [ 8, %15 ], [ 7, %2 ]
  %19 = add nuw nsw i32 %18, 4
  %20 = getelementptr i8, ptr %1, i32 %19
  store i8 -71, ptr %20, align 1
  %21 = trunc i32 %18 to i8
  %22 = add nuw nsw i8 %21, 1
  %23 = getelementptr i8, ptr %1, i32 3
  store i8 %22, ptr %23, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsiop_inq_80(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  store i32 335577088, ptr %1, align 1
  %3 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 4
  tail call void @ata_id_string(ptr noundef %4, ptr noundef %5, i32 noundef 10, i32 noundef 20) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsiop_inq_83(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  store i8 -125, ptr %3, align 1
  %4 = getelementptr i8, ptr %1, i32 4
  store i8 2, ptr %4, align 1
  %5 = getelementptr i8, ptr %1, i32 7
  store i8 20, ptr %5, align 1
  %6 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 8
  tail call void @ata_id_string(ptr noundef %7, ptr noundef %8, i32 noundef 10, i32 noundef 20) #19
  %9 = getelementptr i8, ptr %1, i32 28
  store i8 2, ptr %9, align 1
  %10 = getelementptr i8, ptr %1, i32 29
  store i8 1, ptr %10, align 1
  %11 = getelementptr i8, ptr %1, i32 31
  store i8 68, ptr %11, align 1
  %12 = getelementptr i8, ptr %1, i32 32
  store i64 2314885530820629569, ptr %12, align 1
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %1, i32 40
  tail call void @ata_id_string(ptr noundef %13, ptr noundef %14, i32 noundef 27, i32 noundef 40) #19
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %1, i32 80
  tail call void @ata_id_string(ptr noundef %15, ptr noundef %16, i32 noundef 10, i32 noundef 20) #19
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i16, ptr %17, i32 87
  %19 = load i16, ptr %18, align 2
  %20 = and i16 %19, -16128
  %21 = icmp eq i16 %20, 16640
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %1, i32 100
  store i8 1, ptr %23, align 1
  %24 = getelementptr i8, ptr %1, i32 101
  store i8 3, ptr %24, align 1
  %25 = getelementptr i8, ptr %1, i32 103
  store i8 8, ptr %25, align 1
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %1, i32 104
  tail call void @ata_id_string(ptr noundef %26, ptr noundef %27, i32 noundef 108, i32 noundef 8) #19
  br label %28

28:                                               ; preds = %22, %2
  %29 = phi i8 [ 108, %22 ], [ 96, %2 ]
  %30 = getelementptr i8, ptr %1, i32 3
  store i8 %29, ptr %30, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ata_scsiop_inq_89(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr i8, ptr %1, i32 1
  store i8 -119, ptr %3, align 1
  %4 = getelementptr i8, ptr %1, i32 2
  store i8 2, ptr %4, align 1
  %5 = getelementptr i8, ptr %1, i32 3
  store i8 56, ptr %5, align 1
  %6 = getelementptr i8, ptr %1, i32 8
  store i64 2314885910206769516, ptr %6, align 1
  %7 = getelementptr i8, ptr %1, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %7, ptr noundef nonnull align 1 dereferenceable(16) @.str.39, i32 16, i1 false)
  %8 = getelementptr i8, ptr %1, i32 32
  store i32 808463923, ptr %8, align 1
  %9 = getelementptr i8, ptr %1, i32 36
  store i8 52, ptr %9, align 1
  %10 = getelementptr i8, ptr %1, i32 37
  store i8 -128, ptr %10, align 1
  %11 = getelementptr i8, ptr %1, i32 38
  store i8 64, ptr %11, align 1
  %12 = getelementptr i8, ptr %1, i32 40
  store i8 1, ptr %12, align 1
  %13 = getelementptr i8, ptr %1, i32 48
  store i8 1, ptr %13, align 1
  %14 = getelementptr i8, ptr %1, i32 56
  store i8 -20, ptr %14, align 1
  %15 = getelementptr i8, ptr %1, i32 60
  %16 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(512) %15, ptr noundef align 2 dereferenceable(512) %17, i32 512, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ata_scsiop_inq_b0(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %1, i32 1
  store i8 -80, ptr %4, align 1
  %5 = getelementptr i8, ptr %1, i32 3
  store i8 60, ptr %5, align 1
  %6 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i16, ptr %7, i32 106
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, -8192
  %11 = icmp eq i16 %10, 24576
  %12 = and i16 %9, 15
  %13 = shl nuw i16 1, %12
  %14 = select i1 %11, i16 %13, i16 1
  %15 = getelementptr i8, ptr %1, i32 6
  %16 = tail call i16 @llvm.bswap.i16(i16 %14) #19
  store i16 %16, ptr %15, align 1
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i16, ptr %17, i32 80
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, -1
  %21 = and i16 %19, 32640
  %22 = icmp eq i16 %21, 0
  %23 = or i1 %20, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %2
  %25 = getelementptr i16, ptr %17, i32 169
  %26 = load i16, ptr %25, align 2
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 67108864
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i64 4194240, i64 262144
  %35 = getelementptr i8, ptr %1, i32 36
  %36 = tail call i64 @llvm.bswap.i64(i64 %34) #19
  store i64 %36, ptr %35, align 1
  %37 = getelementptr i8, ptr %1, i32 28
  store i32 16777216, ptr %37, align 1
  br label %38

38:                                               ; preds = %29, %24, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ata_scsiop_inq_b1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i16, ptr %4, i32 168
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr i16, ptr %4, i32 80
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, -1
  %10 = and i16 %8, 32640
  %11 = icmp eq i16 %10, 0
  %12 = or i1 %9, %11
  %13 = icmp eq i16 %6, 0
  %14 = select i1 %12, i1 true, i1 %13
  %15 = icmp eq i16 %6, -1
  %16 = select i1 %14, i1 true, i1 %15
  %17 = and i16 %6, 15
  %18 = icmp ugt i16 %17, 5
  %19 = getelementptr i16, ptr %4, i32 217
  %20 = load i16, ptr %19, align 2
  %21 = icmp eq i16 %20, 0
  %22 = select i1 %12, i1 true, i1 %21
  %23 = icmp eq i16 %20, -1
  %24 = select i1 %22, i1 true, i1 %23
  %25 = add i16 %20, -2
  %26 = icmp ult i16 %25, 1023
  %27 = select i1 %26, i16 0, i16 %20
  %28 = zext i16 %27 to i32
  %29 = select i1 %24, i32 0, i32 %28
  %30 = getelementptr i16, ptr %4, i32 69
  %31 = load i16, ptr %30, align 2
  %32 = trunc i16 %31 to i8
  %33 = and i8 %32, 3
  %34 = getelementptr i8, ptr %1, i32 1
  store i8 -79, ptr %34, align 1
  %35 = getelementptr i8, ptr %1, i32 3
  store i8 60, ptr %35, align 1
  %36 = lshr i32 %29, 8
  %37 = trunc i32 %36 to i8
  %38 = getelementptr i8, ptr %1, i32 4
  store i8 %37, ptr %38, align 1
  %39 = trunc i32 %29 to i8
  %40 = getelementptr i8, ptr %1, i32 5
  store i8 %39, ptr %40, align 1
  %41 = trunc i16 %17 to i8
  %42 = select i1 %16, i1 true, i1 %18
  %43 = select i1 %42, i8 0, i8 %41
  %44 = getelementptr i8, ptr %1, i32 7
  store i8 %43, ptr %44, align 1
  %45 = icmp eq i8 %33, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = shl nuw nsw i8 %33, 4
  %48 = getelementptr i8, ptr %1, i32 8
  store i8 %47, ptr %48, align 1
  br label %49

49:                                               ; preds = %46, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ata_scsiop_inq_b6(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #10 {
  %3 = getelementptr i8, ptr %1, i32 1
  store i8 -74, ptr %3, align 1
  %4 = getelementptr i8, ptr %1, i32 3
  store i8 60, ptr %4, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ata_device, ptr %5, i32 0, i32 29
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 1
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi ptr [ %14, %10 ], [ %5, %2 ]
  %17 = getelementptr inbounds %struct.ata_device, ptr %16, i32 0, i32 30
  %18 = load i32, ptr %17, align 32
  %19 = getelementptr i8, ptr %1, i32 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #19
  store i32 %20, ptr %19, align 1
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.ata_device, ptr %21, i32 0, i32 31
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %1, i32 12
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #19
  store i32 %25, ptr %24, align 1
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.ata_device, ptr %26, i32 0, i32 32
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr i8, ptr %1, i32 16
  %30 = tail call i32 @llvm.bswap.i32(i32 %28) #19
  store i32 %30, ptr %29, align 1
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsiop_inq_b9(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #12 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 1
  store i8 -71, ptr %6, align 1
  %7 = load i8, ptr %5, align 8
  %8 = zext i8 %7 to i16
  %9 = shl nuw nsw i16 %8, 5
  %10 = add nuw nsw i16 %9, 60
  %11 = getelementptr i8, ptr %1, i32 3
  %12 = tail call i16 @llvm.bswap.i16(i16 %10) #19
  store i16 %12, ptr %11, align 1
  %13 = load i8, ptr %5, align 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %2
  %16 = getelementptr i8, ptr %1, i32 64
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %33, %17 ], [ 0, %15 ]
  %19 = phi ptr [ %34, %17 ], [ %16, %15 ]
  %20 = getelementptr %struct.ata_cpr_log, ptr %5, i32 0, i32 1, i32 %18
  %21 = load i8, ptr %20, align 8
  store i8 %21, ptr %19, align 1
  %22 = getelementptr %struct.ata_cpr_log, ptr %5, i32 0, i32 1, i32 %18, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr i8, ptr %19, i32 1
  store i8 %23, ptr %24, align 1
  %25 = getelementptr %struct.ata_cpr_log, ptr %5, i32 0, i32 1, i32 %18, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr i8, ptr %19, i32 8
  %28 = tail call i64 @llvm.bswap.i64(i64 %26) #19
  store i64 %28, ptr %27, align 1
  %29 = getelementptr %struct.ata_cpr_log, ptr %5, i32 0, i32 1, i32 %18, i32 3
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr i8, ptr %19, i32 16
  %32 = tail call i64 @llvm.bswap.i64(i64 %30) #19
  store i64 %32, ptr %31, align 1
  %33 = add nuw nsw i32 %18, 1
  %34 = getelementptr i8, ptr %19, i32 32
  %35 = load i8, ptr %5, align 8
  %36 = zext i8 %35 to i32
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %17, label %38

38:                                               ; preds = %17, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_scsiop_read_cap(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 7
  %5 = load i64, ptr %4, align 16
  %6 = add i64 %5, -1
  %7 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 25
  %8 = getelementptr %struct.ata_device, ptr %3, i32 0, i32 25, i32 0, i32 53
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, -12288
  %11 = icmp eq i16 %10, 20480
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = getelementptr %struct.ata_device, ptr %3, i32 0, i32 25, i32 0, i32 59
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i16, ptr %7, i32 117
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = shl i32 %15, 17
  %20 = shl nuw nsw i32 %18, 1
  %21 = or i32 %20, %19
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i32 [ %21, %12 ], [ 512, %2 ]
  %24 = and i16 %9, -8192
  %25 = icmp eq i16 %24, 24576
  %26 = trunc i16 %9 to i8
  %27 = and i8 %26, 15
  %28 = select i1 %25, i8 %27, i8 0
  %29 = zext i8 %28 to i16
  %30 = icmp ugt i8 %28, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = getelementptr i16, ptr %7, i32 209
  %33 = load i16, ptr %32, align 2
  %34 = and i16 %33, -16384
  %35 = icmp eq i16 %34, 16384
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = and i16 %33, 16383
  %38 = icmp eq i16 %37, 0
  %39 = shl nuw i16 1, %29
  %40 = sub i16 %39, %37
  %41 = trunc i16 %40 to i8
  %42 = lshr i16 %40, 8
  %43 = trunc i16 %42 to i8
  br i1 %38, label %44, label %45

44:                                               ; preds = %36, %31, %22
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i8 [ 0, %44 ], [ %41, %36 ]
  %47 = phi i8 [ 0, %44 ], [ %43, %36 ]
  %48 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.scsi_cmnd, ptr %49, i32 0, i32 16
  %51 = load ptr, ptr %50, align 4
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 37
  br i1 %53, label %54, label %77

54:                                               ; preds = %45
  %55 = tail call i64 @llvm.umin.i64(i64 %6, i64 4294967295)
  %56 = lshr i64 %55, 24
  %57 = trunc i64 %56 to i8
  store i8 %57, ptr %1, align 1
  %58 = lshr i64 %55, 16
  %59 = trunc i64 %58 to i8
  %60 = getelementptr i8, ptr %1, i32 1
  store i8 %59, ptr %60, align 1
  %61 = lshr i64 %55, 8
  %62 = trunc i64 %61 to i8
  %63 = getelementptr i8, ptr %1, i32 2
  store i8 %62, ptr %63, align 1
  %64 = trunc i64 %55 to i8
  %65 = getelementptr i8, ptr %1, i32 3
  store i8 %64, ptr %65, align 1
  %66 = lshr i32 %23, 24
  %67 = trunc i32 %66 to i8
  %68 = getelementptr i8, ptr %1, i32 4
  store i8 %67, ptr %68, align 1
  %69 = lshr i32 %23, 16
  %70 = trunc i32 %69 to i8
  %71 = getelementptr i8, ptr %1, i32 5
  store i8 %70, ptr %71, align 1
  %72 = lshr i32 %23, 8
  %73 = trunc i32 %72 to i8
  %74 = getelementptr i8, ptr %1, i32 6
  store i8 %73, ptr %74, align 1
  %75 = trunc i32 %23 to i8
  %76 = getelementptr i8, ptr %1, i32 7
  store i8 %75, ptr %76, align 1
  br label %183

77:                                               ; preds = %45
  %78 = lshr i64 %6, 56
  %79 = trunc i64 %78 to i8
  store i8 %79, ptr %1, align 1
  %80 = lshr i64 %6, 48
  %81 = trunc i64 %80 to i8
  %82 = getelementptr i8, ptr %1, i32 1
  store i8 %81, ptr %82, align 1
  %83 = lshr i64 %6, 40
  %84 = trunc i64 %83 to i8
  %85 = getelementptr i8, ptr %1, i32 2
  store i8 %84, ptr %85, align 1
  %86 = lshr i64 %6, 32
  %87 = trunc i64 %86 to i8
  %88 = getelementptr i8, ptr %1, i32 3
  store i8 %87, ptr %88, align 1
  %89 = lshr i64 %6, 24
  %90 = trunc i64 %89 to i8
  %91 = getelementptr i8, ptr %1, i32 4
  store i8 %90, ptr %91, align 1
  %92 = lshr i64 %6, 16
  %93 = trunc i64 %92 to i8
  %94 = getelementptr i8, ptr %1, i32 5
  store i8 %93, ptr %94, align 1
  %95 = lshr i64 %6, 8
  %96 = trunc i64 %95 to i8
  %97 = getelementptr i8, ptr %1, i32 6
  store i8 %96, ptr %97, align 1
  %98 = trunc i64 %6 to i8
  %99 = getelementptr i8, ptr %1, i32 7
  store i8 %98, ptr %99, align 1
  %100 = lshr i32 %23, 24
  %101 = trunc i32 %100 to i8
  %102 = getelementptr i8, ptr %1, i32 8
  store i8 %101, ptr %102, align 1
  %103 = lshr i32 %23, 16
  %104 = trunc i32 %103 to i8
  %105 = getelementptr i8, ptr %1, i32 9
  store i8 %104, ptr %105, align 1
  %106 = lshr i32 %23, 8
  %107 = trunc i32 %106 to i8
  %108 = getelementptr i8, ptr %1, i32 10
  store i8 %107, ptr %108, align 1
  %109 = trunc i32 %23 to i8
  %110 = getelementptr i8, ptr %1, i32 11
  store i8 %109, ptr %110, align 1
  %111 = getelementptr i8, ptr %1, i32 12
  store i8 0, ptr %111, align 1
  %112 = getelementptr i8, ptr %1, i32 13
  store i8 %28, ptr %112, align 1
  %113 = and i8 %47, 63
  %114 = getelementptr i8, ptr %1, i32 14
  store i8 %113, ptr %114, align 1
  %115 = getelementptr i8, ptr %1, i32 15
  store i8 %46, ptr %115, align 1
  %116 = getelementptr inbounds %struct.ata_scsi_args, ptr %0, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i16, ptr %117, i32 80
  %119 = load i16, ptr %118, align 2
  %120 = icmp eq i16 %119, -1
  %121 = and i16 %119, 32640
  %122 = icmp eq i16 %121, 0
  %123 = or i1 %120, %122
  br i1 %123, label %171, label %124

124:                                              ; preds = %77
  %125 = getelementptr i16, ptr %117, i32 169
  %126 = load i16, ptr %125, align 2
  %127 = and i16 %126, 1
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %171, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 16777216
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %171

134:                                              ; preds = %129
  %135 = or i8 %113, -128
  store i8 %135, ptr %114, align 1
  %136 = load ptr, ptr %116, align 4
  %137 = getelementptr i16, ptr %136, i32 80
  %138 = load i16, ptr %137, align 2
  %139 = icmp eq i16 %138, -1
  %140 = and i16 %138, 32640
  %141 = icmp eq i16 %140, 0
  %142 = or i1 %139, %141
  br i1 %142, label %171, label %143

143:                                              ; preds = %134
  %144 = getelementptr i16, ptr %136, i32 169
  %145 = load i16, ptr %144, align 2
  %146 = and i16 %145, 1
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %171, label %148

148:                                              ; preds = %143
  %149 = getelementptr i16, ptr %136, i32 69
  %150 = load i16, ptr %149, align 2
  %151 = and i16 %150, 16416
  %152 = icmp eq i16 %151, 16416
  br i1 %152, label %153, label %171

153:                                              ; preds = %148
  %154 = load i32, ptr %130, align 8
  %155 = and i32 %154, 4194304
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %3, align 64
  %159 = load ptr, ptr %158, align 64
  %160 = getelementptr inbounds %struct.ata_port, ptr %159, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.ata_link, ptr %158, i32 0, i32 1
  %163 = load i32, ptr %162, align 4
  %164 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = add i32 %165, %163
  %167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %161, i32 noundef %166) #23
  %168 = load i8, ptr %114, align 1
  %169 = or i8 %168, 64
  store i8 %169, ptr %114, align 1
  %170 = load ptr, ptr %116, align 4
  br label %171

171:                                              ; preds = %157, %153, %148, %143, %134, %129, %124, %77
  %172 = phi ptr [ %136, %148 ], [ %136, %143 ], [ %136, %134 ], [ %117, %124 ], [ %117, %77 ], [ %136, %153 ], [ %170, %157 ], [ %117, %129 ]
  %173 = getelementptr i16, ptr %172, i32 69
  %174 = load i16, ptr %173, align 2
  %175 = and i16 %174, 3
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load ptr, ptr %0, align 4
  %179 = getelementptr inbounds %struct.ata_device, ptr %178, i32 0, i32 9
  %180 = load i32, ptr %179, align 64
  %181 = icmp eq i32 %180, 9
  br i1 %181, label %182, label %183

182:                                              ; preds = %177, %171
  store i8 16, ptr %111, align 1
  br label %183

183:                                              ; preds = %182, %177, %54
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_add_hosts(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %38, %2
  %7 = phi i32 [ %39, %38 ], [ 0, %2 ]
  %8 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @scsi_host_alloc(ptr noundef %1, i32 noundef 4) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 36
  %14 = load i16, ptr %13, align 8
  %15 = or i16 %14, 64
  store i16 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 53
  store ptr %9, ptr %16, align 8
  store ptr %10, ptr %9, align 64
  %17 = load ptr, ptr @ata_scsi_transport_template, align 4
  %18 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 12
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 23
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 21
  store i32 16, ptr %22, align 4
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 22
  store i64 1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 20
  store i32 1, ptr %24, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 24
  store i16 32, ptr %25, align 4
  %26 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 40
  store i32 1, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 33
  %28 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 31
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ata_host, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %10, ptr noundef %27, ptr noundef %31) #19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %12, %6
  %35 = phi i32 [ -12, %6 ], [ %32, %12 ]
  %36 = add i32 %7, -1
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %42, label %49

38:                                               ; preds = %12
  %39 = add nuw i32 %7, 1
  %40 = load i32, ptr %3, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %6, label %49

42:                                               ; preds = %42, %34
  %43 = phi i32 [ %47, %42 ], [ %36, %34 ]
  %44 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 64
  tail call void @scsi_remove_host(ptr noundef %46) #19
  %47 = add nsw i32 %43, -1
  %48 = icmp sgt i32 %43, 0
  br i1 %48, label %42, label %49

49:                                               ; preds = %42, %38, %34, %2
  %50 = phi i32 [ %35, %34 ], [ 0, %2 ], [ %35, %42 ], [ 0, %38 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_scan_host(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %5 = icmp eq i32 %1, 0
  br label %6

6:                                                ; preds = %95, %2
  %7 = phi ptr [ %82, %95 ], [ null, %2 ]
  %8 = phi i32 [ %10, %95 ], [ 5, %2 ]
  br label %9

9:                                                ; preds = %99, %6
  %10 = phi i32 [ %97, %99 ], [ %8, %6 ]
  %11 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %74, label %13

13:                                               ; preds = %71, %9
  %14 = phi ptr [ %72, %71 ], [ %11, %9 ]
  %15 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %14, i32 noundef 0) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %71, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ata_link, ptr %14, i32 0, i32 1
  br label %19

19:                                               ; preds = %68, %17
  %20 = phi ptr [ %15, %17 ], [ %69, %68 ]
  %21 = getelementptr inbounds %struct.ata_device, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load ptr, ptr %14, align 64
  %26 = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 25
  %27 = icmp eq ptr %26, %14
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 26
  %30 = load ptr, ptr %29, align 64
  %31 = icmp eq ptr %30, %14
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.ata_device, ptr %20, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, ptr %18, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ 0, %32 ], [ %36, %35 ]
  %39 = phi i32 [ %34, %32 ], [ 0, %35 ]
  %40 = load ptr, ptr %0, align 64
  %41 = call ptr @__scsi_add_device(ptr noundef %40, i32 noundef %38, i32 noundef %39, i64 noundef 0, ptr noundef null) #19
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %67, label %43

43:                                               ; preds = %37
  store ptr %41, ptr %21, align 16
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.ata_host, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 25
  %48 = load ptr, ptr %47, align 8
  %49 = call ptr @of_get_next_available_child(ptr noundef %48, ptr noundef null) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.ata_device, ptr %20, i32 0, i32 1
  br label %53

53:                                               ; preds = %63, %51
  %54 = phi ptr [ %49, %51 ], [ %64, %63 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !annotation !16
  %55 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %54, ptr noundef nonnull @.str.46, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #19
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, ptr %3, align 4
  %59 = load i32, ptr %52, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 54, i32 25
  store ptr %54, ptr %62, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  br label %66

63:                                               ; preds = %57, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  %64 = call ptr @of_get_next_available_child(ptr noundef %48, ptr noundef nonnull %54) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %53

66:                                               ; preds = %63, %61, %43
  call void @scsi_device_put(ptr noundef %41) #19
  br label %68

67:                                               ; preds = %37
  store ptr null, ptr %21, align 16
  br label %68

68:                                               ; preds = %67, %66, %19
  %69 = call ptr @ata_dev_next(ptr noundef nonnull %20, ptr noundef nonnull %14, i32 noundef 0) #19
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %19

71:                                               ; preds = %68, %13
  %72 = call ptr @ata_link_next(ptr noundef nonnull %14, ptr noundef %0, i32 noundef 0) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %13

74:                                               ; preds = %71, %9
  %75 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #19
  %76 = icmp eq ptr %75, null
  br i1 %76, label %109, label %77

77:                                               ; preds = %89, %74
  %78 = phi ptr [ %90, %89 ], [ %75, %74 ]
  %79 = call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %78, i32 noundef 0) #19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %86, %77
  %82 = phi ptr [ %87, %86 ], [ %79, %77 ]
  %83 = getelementptr inbounds %struct.ata_device, ptr %82, i32 0, i32 4
  %84 = load ptr, ptr %83, align 16
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = call ptr @ata_dev_next(ptr noundef nonnull %82, ptr noundef nonnull %78, i32 noundef 0) #19
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %81

89:                                               ; preds = %86, %77
  %90 = call ptr @ata_link_next(ptr noundef nonnull %78, ptr noundef %0, i32 noundef 0) #19
  %91 = icmp eq ptr %90, null
  br i1 %91, label %109, label %77

92:                                               ; preds = %81
  br i1 %5, label %104, label %93

93:                                               ; preds = %92
  %94 = icmp eq ptr %82, %7
  br i1 %94, label %96, label %95

95:                                               ; preds = %93
  call void @msleep(i32 noundef 100) #19
  br label %6

96:                                               ; preds = %93
  %97 = add i32 %10, -1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  call void @msleep(i32 noundef 100) #19
  br label %9

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %102) #23
  br label %104

104:                                              ; preds = %100, %92
  %105 = load ptr, ptr @system_long_wq, align 4
  %106 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 35
  %107 = call i32 @round_jiffies_relative(i32 noundef 100) #19
  %108 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %105, ptr noundef %106, i32 noundef %107) #19
  br label %109

109:                                              ; preds = %104, %89, %74
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_add_device(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_offline_dev(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @scsi_device_set_state(ptr noundef nonnull %3, i32 noundef 6) #19
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_media_change_notify(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @sdev_evt_send_simple(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2592) #19
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdev_evt_send_simple(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_hotplug(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -10708
  %3 = getelementptr i8, ptr %0, i32 -10692
  %4 = load i32, ptr %3, align 16
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -20
  tail call void @mutex_lock(ptr noundef %8) #19
  %9 = getelementptr i8, ptr %0, i32 -4948
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %9)
  %10 = getelementptr i8, ptr %0, i32 -524
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %7
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef nonnull %11)
  %14 = load ptr, ptr %10, align 8
  %15 = getelementptr %struct.ata_link, ptr %14, i32 1
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %15)
  %16 = load ptr, ptr %10, align 8
  %17 = getelementptr %struct.ata_link, ptr %16, i32 2
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %17)
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr %struct.ata_link, ptr %18, i32 3
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %19)
  %20 = load ptr, ptr %10, align 8
  %21 = getelementptr %struct.ata_link, ptr %20, i32 4
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %21)
  %22 = load ptr, ptr %10, align 8
  %23 = getelementptr %struct.ata_link, ptr %22, i32 5
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %23)
  %24 = load ptr, ptr %10, align 8
  %25 = getelementptr %struct.ata_link, ptr %24, i32 6
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %25)
  %26 = load ptr, ptr %10, align 8
  %27 = getelementptr %struct.ata_link, ptr %26, i32 7
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %27)
  %28 = load ptr, ptr %10, align 8
  %29 = getelementptr %struct.ata_link, ptr %28, i32 8
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %29)
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr %struct.ata_link, ptr %30, i32 9
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %31)
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr %struct.ata_link, ptr %32, i32 10
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %33)
  %34 = load ptr, ptr %10, align 8
  %35 = getelementptr %struct.ata_link, ptr %34, i32 11
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %35)
  %36 = load ptr, ptr %10, align 8
  %37 = getelementptr %struct.ata_link, ptr %36, i32 12
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %37)
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr %struct.ata_link, ptr %38, i32 13
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %39)
  %40 = load ptr, ptr %10, align 8
  %41 = getelementptr %struct.ata_link, ptr %40, i32 14
  tail call fastcc void @ata_scsi_handle_link_detach(ptr noundef %41)
  br label %42

42:                                               ; preds = %13, %7
  tail call void @ata_scsi_scan_host(ptr noundef %2, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef %8) #19
  br label %43

43:                                               ; preds = %42, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_scsi_handle_link_detach(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %0, i32 noundef 2) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 2
  br label %7

7:                                                ; preds = %60, %5
  %8 = phi ptr [ %3, %5 ], [ %61, %60 ]
  %9 = getelementptr inbounds %struct.ata_device, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 33554432
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %6, align 8
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #19
  %16 = load i32, ptr %9, align 4
  %17 = and i32 %16, -33554433
  store i32 %17, ptr %9, align 4
  %18 = load ptr, ptr %6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %15) #19
  %19 = load ptr, ptr %8, align 64
  %20 = load ptr, ptr %19, align 64
  %21 = load ptr, ptr %20, align 64
  %22 = getelementptr inbounds %struct.Scsi_Host, ptr %21, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %22) #19
  %23 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #19
  %26 = getelementptr inbounds %struct.ata_device, ptr %8, i32 0, i32 4
  %27 = load ptr, ptr %26, align 16
  store ptr null, ptr %26, align 16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %13
  %30 = tail call i32 @scsi_device_get(ptr noundef nonnull %27) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = tail call i32 @scsi_device_set_state(ptr noundef nonnull %27, i32 noundef 6) #19
  br label %35

34:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 4390, i32 noundef 9, ptr noundef null) #19
  br label %35

35:                                               ; preds = %34, %32, %13
  %36 = phi ptr [ %27, %32 ], [ null, %34 ], [ null, %13 ]
  %37 = load ptr, ptr %23, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %25) #19
  %38 = load ptr, ptr %20, align 64
  %39 = getelementptr inbounds %struct.Scsi_Host, ptr %38, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %39) #19
  %40 = icmp eq ptr %36, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %8, align 64
  %43 = load ptr, ptr %42, align 64
  %44 = getelementptr inbounds %struct.ata_port, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ata_link, ptr %42, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ata_device, ptr %8, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  %51 = getelementptr inbounds %struct.scsi_device, ptr %36, i32 0, i32 54, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.scsi_device, ptr %36, i32 0, i32 54
  %56 = load ptr, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %41
  %58 = phi ptr [ %56, %54 ], [ %52, %41 ]
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %45, i32 noundef %50, ptr noundef %58) #23
  tail call void @scsi_remove_device(ptr noundef nonnull %36) #19
  tail call void @scsi_device_put(ptr noundef nonnull %36) #19
  br label %60

60:                                               ; preds = %57, %35, %7
  %61 = tail call ptr @ata_dev_next(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 2) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %7

63:                                               ; preds = %60, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_user_scan(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 53
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %4
  %13 = add i64 %3, -1
  %14 = icmp ult i64 %13, -2
  br i1 %14, label %92, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = add i32 %1, -1
  %21 = icmp ult i32 %20, -2
  br i1 %21, label %92, label %25

22:                                               ; preds = %15
  %23 = add i32 %2, -1
  %24 = icmp ult i32 %23, -2
  br i1 %24, label %92, label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %2, %19 ], [ %1, %22 ]
  %27 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #19
  %30 = icmp eq i32 %26, -1
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %6, i32 noundef 0) #19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %88, label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %42, %34 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.ata_link, ptr %35, i32 0, i32 11, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, 3
  store i32 %38, ptr %36, align 4
  %39 = getelementptr inbounds %struct.ata_link, ptr %35, i32 0, i32 11, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 6
  store i32 %41, ptr %39, align 4
  %42 = tail call ptr @ata_link_next(ptr noundef nonnull %35, ptr noundef %6, i32 noundef 0) #19
  %43 = icmp eq ptr %42, null
  br i1 %43, label %88, label %34

44:                                               ; preds = %25
  %45 = load i32, ptr %16, align 4
  %46 = icmp eq i32 %45, 0
  %47 = icmp sgt i32 %26, -1
  br i1 %46, label %48, label %67

48:                                               ; preds = %44
  br i1 %47, label %49, label %90, !prof !8

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25
  %51 = load ptr, ptr %50, align 64
  %52 = icmp eq ptr %51, %6
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ata_port, ptr %51, i32 0, i32 26
  %55 = load ptr, ptr %54, align 64
  %56 = icmp eq ptr %55, %50
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %struct.ata_port, ptr %51, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %53
  br label %63

63:                                               ; preds = %62, %57
  %64 = phi i32 [ 1, %62 ], [ 2, %57 ]
  %65 = icmp ugt i32 %64, %26
  %66 = getelementptr %struct.ata_port, ptr %6, i32 0, i32 25, i32 14, i32 %26
  br i1 %65, label %74, label %90

67:                                               ; preds = %44
  %68 = icmp sgt i32 %45, %26
  %69 = select i1 %47, i1 %68, i1 false
  br i1 %69, label %70, label %90, !prof !9

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 28
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr %struct.ata_link, ptr %72, i32 %26, i32 14
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi ptr [ %73, %70 ], [ %66, %63 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %75, align 64
  %79 = getelementptr inbounds %struct.ata_device, ptr %75, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = shl nuw i32 1, %80
  %82 = getelementptr inbounds %struct.ata_link, ptr %78, i32 0, i32 11, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.ata_link, ptr %78, i32 0, i32 11, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = or i32 %86, 6
  store i32 %87, ptr %85, align 4
  br label %88

88:                                               ; preds = %77, %34, %31
  tail call void @ata_port_schedule_eh(ptr noundef %6) #19
  %89 = load ptr, ptr %27, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %89, i32 noundef %29) #19
  tail call void @ata_port_wait_eh(ptr noundef %6) #19
  br label %92

90:                                               ; preds = %74, %67, %63, %48
  %91 = load ptr, ptr %27, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %91, i32 noundef %29) #19
  br label %92

92:                                               ; preds = %90, %88, %22, %19, %12, %4
  %93 = phi i32 [ -95, %4 ], [ -22, %12 ], [ -22, %19 ], [ -22, %22 ], [ -22, %90 ], [ 0, %88 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_scsi_dev_rescan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -10752
  %3 = getelementptr i8, ptr %0, i32 -64
  tail call void @mutex_lock(ptr noundef %3) #19
  %4 = getelementptr i8, ptr %0, i32 -10744
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #19
  %7 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %2, i32 noundef 0) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %32, %1
  %10 = phi ptr [ %34, %32 ], [ %7, %1 ]
  %11 = phi i32 [ %33, %32 ], [ %6, %1 ]
  %12 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef nonnull %10, i32 noundef 0) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %28, %9
  %15 = phi i32 [ %29, %28 ], [ %11, %9 ]
  %16 = phi ptr [ %30, %28 ], [ %12, %9 ]
  %17 = getelementptr inbounds %struct.ata_device, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @scsi_device_get(ptr noundef nonnull %18) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %15) #19
  %25 = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 54
  tail call void @scsi_rescan_device(ptr noundef %25) #19
  tail call void @scsi_device_put(ptr noundef nonnull %18) #19
  %26 = load ptr, ptr %4, align 8
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #19
  br label %28

28:                                               ; preds = %23, %20, %14
  %29 = phi i32 [ %27, %23 ], [ %15, %14 ], [ %15, %20 ]
  %30 = tail call ptr @ata_dev_next(ptr noundef nonnull %16, ptr noundef nonnull %10, i32 noundef 0) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %14

32:                                               ; preds = %28, %9
  %33 = phi i32 [ %11, %9 ], [ %29, %28 ]
  %34 = tail call ptr @ata_link_next(ptr noundef nonnull %10, ptr noundef %2, i32 noundef 0) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %9

36:                                               ; preds = %32, %1
  %37 = phi i32 [ %6, %1 ], [ %33, %32 ]
  %38 = load ptr, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %37) #19
  tail call void @mutex_unlock(ptr noundef %3) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_rescan_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_rw_xlat(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %3, i32 -74
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 13
  %9 = zext i16 %8 to i32
  %10 = load i8, ptr %5, align 1
  switch i8 %10, label %12 [
    i8 42, label %11
    i8 10, label %11
    i8 -118, label %11
  ]

11:                                               ; preds = %1, %1, %1
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ 8, %11 ], [ 0, %1 ]
  switch i8 %10, label %201 [
    i8 40, label %14
    i8 42, label %14
    i8 8, label %60
    i8 10, label %60
    i8 -120, label %97
    i8 -118, label %97
  ]

14:                                               ; preds = %12, %12
  %15 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %16 = load i16, ptr %15, align 4
  %17 = icmp ult i16 %16, 10
  br i1 %17, label %201, label %18, !prof !10

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %5, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = getelementptr i8, ptr %5, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 16
  %27 = or i64 %26, %22
  %28 = getelementptr i8, ptr %5, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 8
  %32 = or i64 %27, %31
  %33 = getelementptr i8, ptr %5, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = or i64 %32, %35
  %37 = getelementptr i8, ptr %5, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = getelementptr i8, ptr %5, i32 8
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = getelementptr i8, ptr %5, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr i8, ptr %3, i32 -156
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 254
  %50 = icmp eq i32 %49, 34
  br i1 %50, label %51, label %173

51:                                               ; preds = %18
  %52 = getelementptr i8, ptr %3, i32 -136
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.scsi_device, ptr %55, i32 0, i32 20
  %57 = load i32, ptr %56, align 4
  %58 = udiv i32 %53, %57
  %59 = icmp ult i32 %58, %44
  br i1 %59, label %201, label %173

60:                                               ; preds = %12, %12
  %61 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %62 = load i16, ptr %61, align 4
  %63 = icmp ult i16 %62, 6
  br i1 %63, label %201, label %64, !prof !10

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %5, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = and i8 %66, 31
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 16
  %70 = getelementptr i8, ptr %5, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 8
  %74 = or i64 %69, %73
  %75 = getelementptr i8, ptr %5, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i64
  %78 = or i64 %74, %77
  %79 = getelementptr i8, ptr %5, i32 4
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i8 %80, 0
  %83 = select i1 %82, i32 256, i32 %81
  %84 = getelementptr i8, ptr %3, i32 -156
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 254
  %87 = icmp eq i32 %86, 34
  br i1 %87, label %88, label %182

88:                                               ; preds = %64
  %89 = getelementptr i8, ptr %3, i32 -136
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.scsi_device, ptr %92, i32 0, i32 20
  %94 = load i32, ptr %93, align 4
  %95 = udiv i32 %90, %94
  %96 = icmp ult i32 %95, %83
  br i1 %96, label %201, label %182

97:                                               ; preds = %12, %12
  %98 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %99 = load i16, ptr %98, align 4
  %100 = icmp ult i16 %99, 16
  br i1 %100, label %201, label %101, !prof !10

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %5, i32 2
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i64
  %105 = shl nuw i64 %104, 56
  %106 = getelementptr i8, ptr %5, i32 3
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i64
  %109 = shl nuw nsw i64 %108, 48
  %110 = or i64 %109, %105
  %111 = getelementptr i8, ptr %5, i32 4
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i64
  %114 = shl nuw nsw i64 %113, 40
  %115 = or i64 %110, %114
  %116 = getelementptr i8, ptr %5, i32 5
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 32
  %120 = or i64 %115, %119
  %121 = getelementptr i8, ptr %5, i32 6
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i64
  %124 = shl nuw nsw i64 %123, 24
  %125 = or i64 %120, %124
  %126 = getelementptr i8, ptr %5, i32 7
  %127 = load i8, ptr %126, align 1
  %128 = zext i8 %127 to i64
  %129 = shl nuw nsw i64 %128, 16
  %130 = or i64 %125, %129
  %131 = getelementptr i8, ptr %5, i32 8
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i64
  %134 = shl nuw nsw i64 %133, 8
  %135 = or i64 %130, %134
  %136 = getelementptr i8, ptr %5, i32 9
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i64
  %139 = or i64 %135, %138
  %140 = getelementptr i8, ptr %5, i32 10
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = shl nuw i32 %142, 24
  %144 = getelementptr i8, ptr %5, i32 11
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i32
  %147 = shl nuw nsw i32 %146, 16
  %148 = or i32 %147, %143
  %149 = getelementptr i8, ptr %5, i32 12
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  %152 = shl nuw nsw i32 %151, 8
  %153 = or i32 %148, %152
  %154 = getelementptr i8, ptr %5, i32 13
  %155 = load i8, ptr %154, align 1
  %156 = zext i8 %155 to i32
  %157 = or i32 %153, %156
  %158 = getelementptr i8, ptr %5, i32 1
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr i8, ptr %3, i32 -156
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 254
  %163 = icmp eq i32 %162, 34
  br i1 %163, label %164, label %173

164:                                              ; preds = %101
  %165 = getelementptr i8, ptr %3, i32 -136
  %166 = load i32, ptr %165, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.scsi_device, ptr %168, i32 0, i32 20
  %170 = load i32, ptr %169, align 4
  %171 = udiv i32 %166, %170
  %172 = icmp ult i32 %171, %157
  br i1 %172, label %201, label %173

173:                                              ; preds = %164, %101, %51, %18
  %174 = phi i64 [ %139, %164 ], [ %36, %51 ], [ %36, %18 ], [ %139, %101 ]
  %175 = phi i32 [ %157, %164 ], [ %44, %51 ], [ %44, %18 ], [ %157, %101 ]
  %176 = phi i8 [ %159, %164 ], [ %46, %51 ], [ %46, %18 ], [ %159, %101 ]
  %177 = shl i8 %176, 2
  %178 = and i8 %177, 32
  %179 = zext i8 %178 to i32
  %180 = or i32 %13, %179
  %181 = icmp eq i32 %175, 0
  br i1 %181, label %223, label %182

182:                                              ; preds = %173, %88, %64
  %183 = phi i32 [ %180, %173 ], [ %13, %88 ], [ %13, %64 ]
  %184 = phi i32 [ %175, %173 ], [ %83, %88 ], [ %83, %64 ]
  %185 = phi i64 [ %174, %173 ], [ %78, %88 ], [ %78, %64 ]
  %186 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = or i32 %187, 8
  store i32 %188, ptr %186, align 4
  %189 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.scsi_device, ptr %190, i32 0, i32 20
  %192 = load i32, ptr %191, align 4
  %193 = mul i32 %192, %184
  %194 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %196 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %199 = load i32, ptr %198, align 4
  %200 = tail call i32 @ata_build_rw_tf(ptr noundef %195, ptr noundef %197, i64 noundef %185, i32 noundef %184, i32 noundef %183, i32 noundef %199, i32 noundef %9) #19
  switch i32 %200, label %201 [
    i32 0, label %225
    i32 -34, label %215
  ], !prof !24

201:                                              ; preds = %182, %164, %97, %88, %60, %51, %14, %12
  %202 = phi i16 [ 0, %164 ], [ 0, %88 ], [ 0, %51 ], [ 9, %14 ], [ 5, %60 ], [ 15, %97 ], [ 0, %12 ], [ 0, %182 ]
  %203 = icmp eq ptr %3, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.ata_device, ptr %206, i32 0, i32 3
  %208 = load i32, ptr %207, align 4
  %209 = lshr i32 %208, 29
  %210 = and i32 %209, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %210, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %211

211:                                              ; preds = %204, %201
  %212 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 21
  %213 = load ptr, ptr %212, align 4
  %214 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %213, i32 noundef 96, i16 noundef zeroext %202, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %225

215:                                              ; preds = %182
  %216 = icmp eq ptr %3, null
  br i1 %216, label %225, label %217

217:                                              ; preds = %215
  %218 = load ptr, ptr %196, align 4
  %219 = getelementptr inbounds %struct.ata_device, ptr %218, i32 0, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = lshr i32 %220, 29
  %222 = and i32 %221, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %222, i8 noundef zeroext 5, i8 noundef zeroext 33, i8 noundef zeroext 0) #19
  br label %225

223:                                              ; preds = %173
  %224 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  store i32 0, ptr %224, align 4
  br label %225

225:                                              ; preds = %223, %217, %215, %211, %182
  %226 = phi i32 [ 1, %211 ], [ 1, %223 ], [ %200, %182 ], [ 1, %215 ], [ 1, %217 ]
  ret i32 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_write_same_xlat(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = lshr i32 %8, 3
  %14 = getelementptr i8, ptr %12, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 8
  %17 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 12
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %207, label %20, !prof !10

20:                                               ; preds = %1
  %21 = getelementptr i8, ptr %4, i32 -156
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 254
  %24 = icmp eq i32 %23, 34
  br i1 %24, label %207, label %25, !prof !10

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 14
  %27 = load i16, ptr %26, align 4
  %28 = icmp ult i16 %27, 16
  br i1 %28, label %187, label %29, !prof !10

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %12, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = shl nuw i64 %32, 56
  %34 = getelementptr i8, ptr %12, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 48
  %38 = or i64 %37, %33
  %39 = getelementptr i8, ptr %12, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 40
  %43 = or i64 %38, %42
  %44 = getelementptr i8, ptr %12, i32 5
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 32
  %48 = or i64 %43, %47
  %49 = getelementptr i8, ptr %12, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 24
  %53 = or i64 %48, %52
  %54 = getelementptr i8, ptr %12, i32 7
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i64
  %57 = shl nuw nsw i64 %56, 16
  %58 = or i64 %53, %57
  %59 = getelementptr i8, ptr %12, i32 8
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 8
  %63 = or i64 %58, %62
  %64 = getelementptr i8, ptr %12, i32 9
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i64
  %67 = or i64 %63, %66
  %68 = getelementptr i8, ptr %12, i32 10
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 %70, 24
  %72 = getelementptr i8, ptr %12, i32 11
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 16
  %76 = or i32 %75, %71
  %77 = getelementptr i8, ptr %12, i32 12
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 8
  %81 = or i32 %76, %80
  %82 = getelementptr i8, ptr %12, i32 13
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %81, %84
  %86 = icmp eq i8 %16, 0
  br i1 %86, label %187, label %87

87:                                               ; preds = %29
  %88 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 16777216
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %187

92:                                               ; preds = %87
  %93 = getelementptr %struct.ata_device, ptr %10, i32 0, i32 25, i32 0, i32 40
  %94 = load i16, ptr %93, align 2
  %95 = icmp eq i16 %94, -1
  %96 = and i16 %94, 32640
  %97 = icmp eq i16 %96, 0
  %98 = or i1 %95, %97
  br i1 %98, label %187, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 25
  %101 = getelementptr i16, ptr %100, i32 169
  %102 = load i16, ptr %101, align 2
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %187, label %105

105:                                              ; preds = %99
  %106 = mul i32 %13, 65535
  %107 = icmp ugt i32 %85, %106
  br i1 %107, label %187, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %200, label %112

112:                                              ; preds = %108
  %113 = icmp ugt i32 %8, 576
  br i1 %113, label %114, label %115, !prof !10

114:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3092, i32 noundef 9, ptr noundef null) #19
  br label %115

115:                                              ; preds = %114, %112
  %116 = tail call i32 @llvm.umin.i32(i32 %8, i32 576) #19
  %117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ata_scsi_rbuf_lock) #19
  tail call void @llvm.memset.p0.i32(ptr nonnull align 8 @ata_scsi_rbuf, i8 0, i32 %116, i1 false) #19
  br label %118

118:                                              ; preds = %123, %115
  %119 = phi i32 [ 0, %115 ], [ %128, %123 ]
  %120 = phi i32 [ %85, %115 ], [ %131, %123 ]
  %121 = phi i64 [ %67, %115 ], [ %132, %123 ]
  %122 = icmp eq i32 %119, %13
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = tail call i32 @llvm.umin.i32(i32 %120, i32 65535) #19
  %125 = zext i32 %124 to i64
  %126 = shl nuw i64 %125, 48
  %127 = or i64 %126, %121
  %128 = add nuw nsw i32 %119, 1
  %129 = getelementptr i64, ptr @ata_scsi_rbuf, i32 %119
  store i64 %127, ptr %129, align 8
  %130 = icmp ult i32 %120, 65536
  %131 = add i32 %120, -65535
  %132 = add i64 %121, 65535
  br i1 %130, label %133, label %118

133:                                              ; preds = %123, %118
  %134 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17
  %135 = load ptr, ptr %134, align 4
  %136 = load i32, ptr %109, align 4
  %137 = tail call i32 @sg_copy_from_buffer(ptr noundef %135, i32 noundef %136, ptr noundef nonnull @ata_scsi_rbuf, i32 noundef %116) #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ata_scsi_rbuf_lock, i32 noundef %117) #19
  %138 = icmp eq i32 %137, %8
  br i1 %138, label %139, label %200

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 536584
  %143 = icmp eq i32 %142, 524296
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = getelementptr %struct.ata_device, ptr %10, i32 0, i32 27, i32 4
  %146 = load i8, ptr %145, align 4
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 6, ptr %150, align 4
  %151 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 100, ptr %151, align 1
  %152 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  store i8 0, ptr %152, align 1
  %153 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %154 = load i32, ptr %153, align 4
  %155 = trunc i32 %154 to i8
  %156 = shl i8 %155, 3
  %157 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %156, ptr %157, align 4
  %158 = lshr i32 %8, 9
  %159 = lshr i32 %8, 17
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  store i8 %160, ptr %161, align 2
  %162 = trunc i32 %158 to i8
  %163 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %162, ptr %163, align 1
  %164 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 15
  store i32 1, ptr %164, align 4
  br label %176

165:                                              ; preds = %144, %139
  %166 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 2, ptr %166, align 4
  %167 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  store i8 0, ptr %167, align 2
  %168 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 1, ptr %168, align 1
  %169 = lshr i32 %8, 9
  %170 = lshr i32 %8, 17
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  store i8 %171, ptr %172, align 1
  %173 = trunc i32 %169 to i8
  %174 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %173, ptr %174, align 4
  %175 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 6, ptr %175, align 1
  br label %176

176:                                              ; preds = %165, %149
  %177 = load i32, ptr %2, align 4
  %178 = or i32 %177, 15
  store i32 %178, ptr %2, align 4
  %179 = load ptr, ptr %3, align 4
  %180 = getelementptr inbounds %struct.scsi_cmnd, ptr %179, i32 0, i32 27
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 14
  store i32 %181, ptr %182, align 4
  %183 = getelementptr inbounds %struct.scsi_cmnd, ptr %179, i32 0, i32 17, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = add i32 %184, %181
  %186 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  store i32 %185, ptr %186, align 4
  br label %214

187:                                              ; preds = %105, %99, %92, %87, %29, %25
  %188 = phi i16 [ 15, %25 ], [ 1, %87 ], [ 1, %29 ], [ 2, %105 ], [ 1, %92 ], [ 1, %99 ]
  %189 = phi i8 [ -1, %25 ], [ 3, %87 ], [ 3, %29 ], [ -1, %105 ], [ 3, %92 ], [ 3, %99 ]
  %190 = icmp eq ptr %4, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 29
  %195 = and i32 %194, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %195, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %196

196:                                              ; preds = %191, %187
  %197 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 21
  %198 = load ptr, ptr %197, align 4
  %199 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %198, i32 noundef 96, i16 noundef zeroext %188, i8 noundef zeroext %189, i1 noundef zeroext true) #19
  br label %214

200:                                              ; preds = %133, %108
  %201 = icmp eq ptr %4, null
  br i1 %201, label %214, label %202

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = lshr i32 %204, 29
  %206 = and i32 %205, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %206, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #19
  br label %214

207:                                              ; preds = %20, %1
  %208 = icmp eq ptr %4, null
  br i1 %208, label %214, label %209

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %211 = load i32, ptr %210, align 4
  %212 = lshr i32 %211, 29
  %213 = and i32 %212, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %213, i8 noundef zeroext 5, i8 noundef zeroext 32, i8 noundef zeroext 0) #19
  br label %214

214:                                              ; preds = %209, %207, %202, %200, %196, %176
  %215 = phi i32 [ 1, %196 ], [ 0, %176 ], [ 1, %200 ], [ 1, %202 ], [ 1, %207 ], [ 1, %209 ]
  ret i32 %215
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ata_scsi_flush_xlat(ptr nocapture noundef %0) #11 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 4
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_device, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i8 -25, i8 -22
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 8
  store i32 %16, ptr %14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_verify_xlat(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 7
  %8 = load i64, ptr %7, align 16
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = or i32 %11, 6
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %13, align 4
  %14 = load i8, ptr %10, align 1
  switch i8 %14, label %215 [
    i8 47, label %15
    i8 -113, label %42
  ]

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %17 = load i16, ptr %16, align 4
  %18 = icmp ult i16 %17, 10
  br i1 %18, label %215, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %10, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 24
  %24 = getelementptr i8, ptr %10, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = or i64 %27, %23
  %29 = getelementptr i8, ptr %10, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 8
  %33 = or i64 %28, %32
  %34 = getelementptr i8, ptr %10, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = or i64 %33, %36
  %38 = getelementptr i8, ptr %10, i32 7
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  br label %99

42:                                               ; preds = %1
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %44 = load i16, ptr %43, align 4
  %45 = icmp ult i16 %44, 16
  br i1 %45, label %215, label %46

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %10, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i64
  %50 = shl nuw i64 %49, 56
  %51 = getelementptr i8, ptr %10, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i64
  %54 = shl nuw nsw i64 %53, 48
  %55 = or i64 %54, %50
  %56 = getelementptr i8, ptr %10, i32 4
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 40
  %60 = or i64 %55, %59
  %61 = getelementptr i8, ptr %10, i32 5
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i64
  %64 = shl nuw nsw i64 %63, 32
  %65 = or i64 %60, %64
  %66 = getelementptr i8, ptr %10, i32 6
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i64
  %69 = shl nuw nsw i64 %68, 24
  %70 = or i64 %65, %69
  %71 = getelementptr i8, ptr %10, i32 7
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i64
  %74 = shl nuw nsw i64 %73, 16
  %75 = or i64 %70, %74
  %76 = getelementptr i8, ptr %10, i32 8
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 8
  %80 = or i64 %75, %79
  %81 = getelementptr i8, ptr %10, i32 9
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i64
  %84 = or i64 %80, %83
  %85 = getelementptr i8, ptr %10, i32 10
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl nuw i32 %87, 24
  %89 = getelementptr i8, ptr %10, i32 11
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 16
  %93 = or i32 %92, %88
  %94 = getelementptr i8, ptr %10, i32 12
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = or i32 %93, %97
  br label %99

99:                                               ; preds = %46, %19
  %100 = phi i32 [ 13, %46 ], [ 8, %19 ]
  %101 = phi i32 [ %98, %46 ], [ %41, %19 ]
  %102 = phi i64 [ %84, %46 ], [ %37, %19 ]
  %103 = getelementptr i8, ptr %10, i32 %100
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = or i32 %101, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %234, label %108

108:                                              ; preds = %99
  %109 = icmp ult i64 %102, %8
  br i1 %109, label %110, label %227

110:                                              ; preds = %108
  %111 = zext i32 %106 to i64
  %112 = add i64 %102, %111
  %113 = icmp ugt i64 %112, %8
  br i1 %113, label %227, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %172, label %119

119:                                              ; preds = %114
  %120 = or i32 %11, 22
  store i32 %120, ptr %4, align 4
  %121 = icmp ult i64 %112, 268435455
  %122 = icmp ult i32 %106, 257
  %123 = and i1 %122, %121
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 64, ptr %125, align 1
  %126 = lshr i64 %102, 24
  %127 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  %128 = load i8, ptr %127, align 4
  %129 = trunc i64 %126 to i8
  %130 = and i8 %129, 15
  %131 = or i8 %128, %130
  br label %158

132:                                              ; preds = %119
  %133 = add i64 %112, -1
  %134 = icmp ult i64 %133, 281474976710656
  %135 = icmp ult i32 %106, 65536
  %136 = and i1 %135, %134
  br i1 %136, label %137, label %227

137:                                              ; preds = %132
  %138 = load i32, ptr %115, align 4
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %227, label %141

141:                                              ; preds = %137
  %142 = or i32 %11, 23
  store i32 %142, ptr %4, align 4
  %143 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 66, ptr %143, align 1
  %144 = lshr i32 %101, 8
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  store i8 %145, ptr %146, align 1
  %147 = lshr i64 %102, 40
  %148 = trunc i64 %147 to i8
  %149 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 7
  store i8 %148, ptr %149, align 2
  %150 = lshr i64 %102, 32
  %151 = trunc i64 %150 to i8
  %152 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 6
  store i8 %151, ptr %152, align 1
  %153 = lshr i64 %102, 24
  %154 = trunc i64 %153 to i8
  %155 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 5
  store i8 %154, ptr %155, align 4
  %156 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  %157 = load i8, ptr %156, align 4
  br label %158

158:                                              ; preds = %141, %124
  %159 = phi i8 [ %157, %141 ], [ %131, %124 ]
  %160 = trunc i32 %106 to i8
  %161 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %160, ptr %161, align 4
  %162 = lshr i64 %102, 16
  %163 = trunc i64 %162 to i8
  %164 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %163, ptr %164, align 1
  %165 = lshr i64 %102, 8
  %166 = trunc i64 %165 to i8
  %167 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %166, ptr %167, align 2
  %168 = trunc i64 %102 to i8
  %169 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %168, ptr %169, align 1
  %170 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  %171 = or i8 %159, 64
  store i8 %171, ptr %170, align 4
  br label %236

172:                                              ; preds = %114
  %173 = icmp ult i64 %112, 268435455
  %174 = icmp ult i32 %106, 257
  %175 = and i1 %174, %173
  br i1 %175, label %176, label %227

176:                                              ; preds = %172
  %177 = trunc i64 %102 to i32
  %178 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 23
  %179 = load i16, ptr %178, align 4
  %180 = zext i16 %179 to i32
  %181 = freeze i32 %177
  %182 = freeze i32 %180
  %183 = udiv i32 %181, %182
  %184 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 22
  %185 = load i16, ptr %184, align 2
  %186 = zext i16 %185 to i32
  %187 = freeze i32 %183
  %188 = freeze i32 %186
  %189 = udiv i32 %187, %188
  %190 = mul i32 %189, %188
  %191 = sub i32 %187, %190
  %192 = mul i32 %183, %182
  %193 = sub i32 %181, %192
  %194 = icmp ult i32 %189, 65536
  %195 = icmp ult i32 %191, 16
  %196 = icmp ult i32 %193, 255
  %197 = and i1 %194, %195
  %198 = select i1 %197, i1 %196, i1 false
  br i1 %198, label %199, label %227

199:                                              ; preds = %176
  %200 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 64, ptr %200, align 1
  %201 = trunc i32 %106 to i8
  %202 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %201, ptr %202, align 4
  %203 = trunc i32 %193 to i8
  %204 = add nuw i8 %203, 1
  %205 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %204, ptr %205, align 1
  %206 = trunc i32 %189 to i8
  %207 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %206, ptr %207, align 2
  %208 = lshr i32 %189, 8
  %209 = trunc i32 %208 to i8
  %210 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %209, ptr %210, align 1
  %211 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  %212 = load i8, ptr %211, align 4
  %213 = trunc i32 %191 to i8
  %214 = or i8 %212, %213
  store i8 %214, ptr %211, align 4
  br label %236

215:                                              ; preds = %42, %15, %1
  %216 = phi i16 [ 9, %15 ], [ 15, %42 ], [ 0, %1 ]
  %217 = icmp eq ptr %3, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = lshr i32 %220, 29
  %222 = and i32 %221, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %222, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %223

223:                                              ; preds = %218, %215
  %224 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 21
  %225 = load ptr, ptr %224, align 4
  %226 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %225, i32 noundef 96, i16 noundef zeroext %216, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %236

227:                                              ; preds = %176, %172, %137, %132, %110, %108
  %228 = icmp eq ptr %3, null
  br i1 %228, label %236, label %229

229:                                              ; preds = %227
  %230 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %231 = load i32, ptr %230, align 4
  %232 = lshr i32 %231, 29
  %233 = and i32 %232, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %233, i8 noundef zeroext 5, i8 noundef zeroext 33, i8 noundef zeroext 0) #19
  br label %236

234:                                              ; preds = %99
  %235 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  store i32 0, ptr %235, align 4
  br label %236

236:                                              ; preds = %234, %229, %227, %223, %199, %158
  %237 = phi i32 [ 1, %223 ], [ 1, %234 ], [ 0, %199 ], [ 0, %158 ], [ 1, %227 ], [ 1, %229 ]
  ret i32 %237
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_pass_thru(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 127
  %11 = select i1 %10, i32 9, i32 0
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = lshr i8 %14, 1
  %16 = and i8 %15, 15
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, -3
  %19 = icmp ult i32 %18, 10
  br i1 %19, label %22, label %20

20:                                               ; preds = %22, %1
  %21 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 -1, ptr %21, align 4
  br label %284

22:                                               ; preds = %1
  %23 = trunc i32 %18 to i16
  %24 = lshr i16 911, %23
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %20, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [10 x i8], ptr @switch.table.ata_scsi_pass_thru, i32 0, i32 %18
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 %29, ptr %30, align 4
  %31 = or i32 %11, 2
  %32 = getelementptr i8, ptr %8, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = trunc i32 %31 to i16
  br label %284

42:                                               ; preds = %36
  %43 = icmp eq i32 %18, 9
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  store i8 4, ptr %30, align 4
  br label %45

45:                                               ; preds = %44, %42, %27
  %46 = phi i8 [ %29, %42 ], [ 4, %44 ], [ %29, %27 ]
  %47 = load i32, ptr %2, align 4
  %48 = or i32 %47, 16
  store i32 %48, ptr %2, align 4
  %49 = load i8, ptr %8, align 1
  switch i8 %49, label %120 [
    i8 -123, label %50
    i8 -95, label %97
  ]

50:                                               ; preds = %45
  %51 = getelementptr i8, ptr %8, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %8, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  store i8 %57, ptr %58, align 2
  %59 = getelementptr i8, ptr %8, i32 5
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  store i8 %60, ptr %61, align 1
  %62 = getelementptr i8, ptr %8, i32 7
  %63 = load i8, ptr %62, align 1
  %64 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 5
  store i8 %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %8, i32 9
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 6
  store i8 %66, ptr %67, align 1
  %68 = getelementptr i8, ptr %8, i32 11
  %69 = load i8, ptr %68, align 1
  %70 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 7
  store i8 %69, ptr %70, align 2
  %71 = or i32 %47, 17
  br label %74

72:                                               ; preds = %50
  %73 = and i32 %48, -2
  br label %74

74:                                               ; preds = %72, %55
  %75 = phi i32 [ %73, %72 ], [ %71, %55 ]
  store i32 %75, ptr %2, align 4
  %76 = getelementptr i8, ptr %8, i32 4
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %77, ptr %78, align 1
  %79 = getelementptr i8, ptr %8, i32 6
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %80, ptr %81, align 4
  %82 = getelementptr i8, ptr %8, i32 8
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %83, ptr %84, align 1
  %85 = getelementptr i8, ptr %8, i32 10
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %86, ptr %87, align 2
  %88 = getelementptr i8, ptr %8, i32 12
  %89 = load i8, ptr %88, align 1
  %90 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %89, ptr %90, align 1
  %91 = getelementptr i8, ptr %8, i32 13
  %92 = load i8, ptr %91, align 1
  %93 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  store i8 %92, ptr %93, align 4
  %94 = getelementptr i8, ptr %8, i32 14
  %95 = load i8, ptr %94, align 1
  %96 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 %95, ptr %96, align 1
  br label %171

97:                                               ; preds = %45
  %98 = and i32 %48, -2
  store i32 %98, ptr %2, align 4
  %99 = getelementptr i8, ptr %8, i32 3
  %100 = load i8, ptr %99, align 1
  %101 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %100, ptr %101, align 1
  %102 = getelementptr i8, ptr %8, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %103, ptr %104, align 4
  %105 = getelementptr i8, ptr %8, i32 5
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %106, ptr %107, align 1
  %108 = getelementptr i8, ptr %8, i32 6
  %109 = load i8, ptr %108, align 1
  %110 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %109, ptr %110, align 2
  %111 = getelementptr i8, ptr %8, i32 7
  %112 = load i8, ptr %111, align 1
  %113 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %112, ptr %113, align 1
  %114 = getelementptr i8, ptr %8, i32 8
  %115 = load i8, ptr %114, align 1
  %116 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  store i8 %115, ptr %116, align 4
  %117 = getelementptr i8, ptr %8, i32 9
  %118 = load i8, ptr %117, align 1
  %119 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 %118, ptr %119, align 1
  br label %171

120:                                              ; preds = %45
  %121 = getelementptr i8, ptr %8, i32 10
  %122 = load i8, ptr %121, align 1
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %120
  %126 = getelementptr i8, ptr %8, i32 20
  %127 = load i8, ptr %126, align 1
  %128 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  store i8 %127, ptr %128, align 2
  %129 = getelementptr i8, ptr %8, i32 22
  %130 = load i8, ptr %129, align 1
  %131 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  store i8 %130, ptr %131, align 1
  %132 = getelementptr i8, ptr %8, i32 16
  %133 = load i8, ptr %132, align 1
  %134 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 5
  store i8 %133, ptr %134, align 4
  %135 = getelementptr i8, ptr %8, i32 15
  %136 = load i8, ptr %135, align 1
  %137 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 6
  store i8 %136, ptr %137, align 1
  %138 = getelementptr i8, ptr %8, i32 14
  %139 = load i8, ptr %138, align 1
  %140 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 7
  store i8 %139, ptr %140, align 2
  %141 = or i32 %47, 17
  br label %144

142:                                              ; preds = %120
  %143 = and i32 %48, -2
  br label %144

144:                                              ; preds = %142, %125
  %145 = phi i32 [ %143, %142 ], [ %141, %125 ]
  store i32 %145, ptr %2, align 4
  %146 = getelementptr i8, ptr %8, i32 21
  %147 = load i8, ptr %146, align 1
  %148 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %147, ptr %148, align 1
  %149 = getelementptr i8, ptr %8, i32 23
  %150 = load i8, ptr %149, align 1
  %151 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %150, ptr %151, align 4
  %152 = getelementptr i8, ptr %8, i32 19
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %153, ptr %154, align 1
  %155 = getelementptr i8, ptr %8, i32 18
  %156 = load i8, ptr %155, align 1
  %157 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %156, ptr %157, align 2
  %158 = getelementptr i8, ptr %8, i32 17
  %159 = load i8, ptr %158, align 1
  %160 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %159, ptr %160, align 1
  %161 = getelementptr i8, ptr %8, i32 24
  %162 = load i8, ptr %161, align 1
  %163 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  store i8 %162, ptr %163, align 4
  %164 = getelementptr i8, ptr %8, i32 25
  %165 = load i8, ptr %164, align 1
  %166 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 %165, ptr %166, align 1
  %167 = getelementptr i8, ptr %8, i32 28
  %168 = load i32, ptr %167, align 1
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #19
  %170 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 15
  store i32 %169, ptr %170, align 4
  br label %171

171:                                              ; preds = %144, %97, %74
  %172 = phi i32 [ %98, %97 ], [ %145, %144 ], [ %75, %74 ]
  %173 = phi i8 [ %103, %97 ], [ %150, %144 ], [ %80, %74 ]
  %174 = phi i8 [ %118, %97 ], [ %165, %144 ], [ %95, %74 ]
  %175 = phi i8 [ %115, %97 ], [ %162, %144 ], [ %92, %74 ]
  %176 = and i8 %46, 4
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %180 = load i32, ptr %179, align 4
  %181 = trunc i32 %180 to i8
  %182 = shl i8 %181, 3
  %183 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %182, ptr %183, align 4
  br label %184

184:                                              ; preds = %178, %171
  %185 = phi i8 [ %182, %178 ], [ %173, %171 ]
  %186 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = icmp eq i32 %187, 0
  %189 = and i8 %175, -17
  %190 = select i1 %188, i8 0, i8 16
  %191 = or i8 %189, %190
  %192 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  store i8 %191, ptr %192, align 4
  %193 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  switch i8 %174, label %207 [
    i8 34, label %194
    i8 35, label %194
    i8 50, label %194
    i8 51, label %194
    i8 56, label %200
    i8 -121, label %200
    i8 -51, label %200
    i8 -56, label %200
    i8 37, label %200
    i8 38, label %200
    i8 96, label %200
    i8 -60, label %200
    i8 41, label %200
    i8 32, label %200
    i8 36, label %200
    i8 42, label %200
    i8 43, label %200
    i8 64, label %200
    i8 66, label %200
    i8 -54, label %200
    i8 53, label %200
    i8 61, label %200
    i8 54, label %200
    i8 62, label %200
    i8 97, label %200
    i8 -59, label %200
    i8 57, label %200
    i8 -50, label %200
    i8 48, label %200
    i8 52, label %200
    i8 58, label %200
    i8 59, label %200
  ]

194:                                              ; preds = %184, %184, %184, %184
  %195 = icmp eq i8 %46, 1
  %196 = icmp eq i8 %185, 1
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %284

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 1
  br label %204

200:                                              ; preds = %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184, %184
  %201 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.scsi_device, ptr %202, i32 0, i32 20
  br label %204

204:                                              ; preds = %200, %198
  %205 = phi ptr [ %203, %200 ], [ %199, %198 ]
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %184
  %208 = phi i32 [ 512, %184 ], [ %206, %204 ]
  %209 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 12
  store i32 %208, ptr %209, align 4
  %210 = or i32 %172, 6
  store i32 %210, ptr %2, align 4
  %211 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 15
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = or i32 %172, 14
  store i32 %215, ptr %2, align 4
  br label %216

216:                                              ; preds = %214, %207
  %217 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %218 = load i32, ptr %217, align 4
  %219 = or i32 %218, 80
  store i32 %219, ptr %217, align 4
  %220 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 27
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 14
  store i32 %221, ptr %222, align 4
  %223 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = add i32 %224, %221
  %226 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  store i32 %225, ptr %226, align 4
  %227 = icmp eq i8 %46, 2
  br i1 %227, label %228, label %232

228:                                              ; preds = %216
  %229 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 12
  %230 = load i8, ptr %229, align 1
  %231 = icmp eq i8 %230, -1
  br i1 %231, label %284, label %232

232:                                              ; preds = %228, %216
  br i1 %177, label %238, label %233

233:                                              ; preds = %232
  %234 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, 12296
  %237 = icmp eq i32 %236, 8
  br i1 %237, label %238, label %284

238:                                              ; preds = %233, %232
  %239 = getelementptr i8, ptr %8, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = icmp ult i8 %240, 32
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  switch i8 %174, label %284 [
    i8 -60, label %244
    i8 -59, label %244
    i8 41, label %244
    i8 57, label %244
    i8 -50, label %244
  ]

243:                                              ; preds = %238
  switch i8 %174, label %262 [
    i8 -60, label %244
    i8 -59, label %244
    i8 41, label %244
    i8 57, label %244
    i8 -50, label %244
  ]

244:                                              ; preds = %243, %243, %243, %243, %243, %242, %242, %242, %242, %242
  %245 = lshr i8 %240, 5
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 1, %246
  %248 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 15
  %249 = load i32, ptr %248, align 16
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %262, label %251

251:                                              ; preds = %244
  %252 = load ptr, ptr %6, align 64
  %253 = load ptr, ptr %252, align 64
  %254 = getelementptr inbounds %struct.ata_port, ptr %253, i32 0, i32 5
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr inbounds %struct.ata_link, ptr %252, i32 0, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = load i32, ptr %186, align 4
  %259 = add i32 %258, %257
  %260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %255, i32 noundef %259, i32 noundef %247) #23
  %261 = load i8, ptr %193, align 1
  br label %262

262:                                              ; preds = %251, %244, %243
  %263 = phi i8 [ %174, %243 ], [ %174, %244 ], [ %261, %251 ]
  %264 = icmp eq i8 %263, -17
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  %267 = load i8, ptr %266, align 1
  %268 = icmp eq i8 %267, 3
  br i1 %268, label %269, label %296

269:                                              ; preds = %265
  %270 = load i8, ptr %8, align 1
  %271 = icmp eq i8 %270, -123
  %272 = select i1 %271, i16 4, i16 3
  br label %284

273:                                              ; preds = %262
  %274 = icmp ugt i8 %263, 91
  br i1 %274, label %275, label %296

275:                                              ; preds = %273
  %276 = icmp ugt i8 %263, 95
  %277 = load i32, ptr @libata_allow_tpm, align 4
  %278 = icmp ne i32 %277, 0
  %279 = select i1 %276, i1 true, i1 %278
  br i1 %279, label %296, label %280

280:                                              ; preds = %275
  %281 = load i8, ptr %8, align 1
  %282 = icmp eq i8 %281, -123
  %283 = select i1 %282, i16 14, i16 9
  br label %284

284:                                              ; preds = %280, %269, %242, %233, %228, %194, %40, %20
  %285 = phi i16 [ %41, %40 ], [ %272, %269 ], [ %283, %280 ], [ 1, %20 ], [ 1, %194 ], [ 1, %228 ], [ 1, %233 ], [ 1, %242 ]
  %286 = icmp eq ptr %4, null
  br i1 %286, label %292, label %287

287:                                              ; preds = %284
  %288 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %289 = load i32, ptr %288, align 4
  %290 = lshr i32 %289, 29
  %291 = and i32 %290, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %291, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %292

292:                                              ; preds = %287, %284
  %293 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 21
  %294 = load ptr, ptr %293, align 4
  %295 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %294, i32 noundef 96, i16 noundef zeroext %285, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %296

296:                                              ; preds = %292, %275, %273, %265
  %297 = phi i32 [ 1, %292 ], [ 0, %275 ], [ 0, %273 ], [ 0, %265 ]
  ret i32 %297
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_var_len_cdb_xlat(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8
  %7 = load i16, ptr %6, align 1
  %8 = icmp eq i16 %7, -4065
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @ata_scsi_pass_thru(ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_mode_select_xlat(ptr nocapture noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca [64 x i8], align 1
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #19
  store i16 -1, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !16
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 21
  %10 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 14
  %11 = load i16, ptr %10, align 4
  br i1 %9, label %12, label %19

12:                                               ; preds = %1
  %13 = icmp ult i16 %11, 5
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i16 4, ptr %2, align 2
  br label %151

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %7, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  br label %31

19:                                               ; preds = %1
  %20 = icmp ult i16 %11, 9
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store i16 8, ptr %2, align 2
  br label %151

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %7, i32 7
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr i8, ptr %7, i32 8
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  br label %31

31:                                               ; preds = %22, %15
  %32 = phi i32 [ 4, %15 ], [ 8, %22 ]
  %33 = phi i32 [ %18, %15 ], [ %30, %22 ]
  %34 = getelementptr i8, ptr %7, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 17
  %37 = icmp eq i8 %36, 16
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  store i16 1, ptr %2, align 2
  %39 = and i8 %35, 1
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, i8 5, i8 1
  br label %151

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %170, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, %33
  %52 = icmp ult i32 %33, %32
  %53 = or i1 %52, %51
  br i1 %53, label %170, label %54

54:                                               ; preds = %46
  %55 = call i32 @sg_copy_to_buffer(ptr noundef %48, i32 noundef %44, ptr noundef nonnull %3, i32 noundef 64) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %170, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %3, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds i8, ptr %3, i32 6
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw nsw i32 %63, 8
  %65 = getelementptr inbounds i8, ptr %3, i32 7
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %64, %67
  %69 = select i1 %9, i32 %60, i32 %68
  %70 = sub nsw i32 %33, %32
  %71 = getelementptr i8, ptr %3, i32 %32
  %72 = icmp ult i32 %70, %69
  br i1 %72, label %170, label %73

73:                                               ; preds = %57
  %74 = and i32 %69, 65527
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = add nuw nsw i32 %69, %32
  %78 = select i1 %9, i32 3, i32 6
  %79 = add nuw nsw i32 %77, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, ptr %2, align 2
  br label %166

81:                                               ; preds = %73
  %82 = sub nsw i32 %70, %69
  %83 = getelementptr i8, ptr %71, i32 %69
  %84 = icmp eq i32 %70, %69
  br i1 %84, label %179, label %85

85:                                               ; preds = %81
  %86 = load i8, ptr %83, align 1
  %87 = and i8 %86, 63
  %88 = and i8 %86, 64
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = icmp slt i32 %82, 4
  br i1 %91, label %170, label %100

92:                                               ; preds = %85
  %93 = icmp slt i32 %82, 2
  br i1 %93, label %170, label %94

94:                                               ; preds = %92
  %95 = getelementptr i8, ptr %83, i32 1
  %96 = load i8, ptr %95, align 1
  %97 = zext i8 %96 to i32
  %98 = getelementptr i8, ptr %83, i32 2
  %99 = add nsw i32 %82, -2
  br label %121

100:                                              ; preds = %90
  %101 = getelementptr i8, ptr %83, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = getelementptr i8, ptr %83, i32 2
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl nuw nsw i32 %105, 8
  %107 = getelementptr i8, ptr %83, i32 3
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %106, %109
  %111 = getelementptr i8, ptr %83, i32 4
  %112 = add nsw i32 %82, -4
  switch i8 %102, label %113 [
    i8 -1, label %121
    i8 0, label %121
  ]

113:                                              ; preds = %100
  %114 = load i8, ptr %111, align 1
  %115 = lshr i8 %114, 6
  %116 = and i8 %115, 1
  %117 = add nuw nsw i32 %69, %32
  %118 = zext i8 %116 to i32
  %119 = add nuw nsw i32 %117, %118
  %120 = trunc i32 %119 to i16
  store i16 %120, ptr %2, align 2
  br label %166

121:                                              ; preds = %100, %100, %94
  %122 = phi ptr [ %98, %94 ], [ %111, %100 ], [ %111, %100 ]
  %123 = phi i32 [ %99, %94 ], [ %112, %100 ], [ %112, %100 ]
  %124 = phi i32 [ %97, %94 ], [ %110, %100 ], [ %110, %100 ]
  %125 = icmp ugt i32 %124, %123
  br i1 %125, label %170, label %126

126:                                              ; preds = %121
  %127 = zext i8 %87 to i32
  switch i32 %127, label %144 [
    i32 8, label %128
    i32 10, label %136
  ]

128:                                              ; preds = %126
  %129 = call fastcc i32 @ata_mselect_caching(ptr noundef %0, ptr noundef %122, i32 noundef %124, ptr noundef nonnull %2)
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = add nuw nsw i32 %69, %32
  %133 = load i16, ptr %2, align 2
  %134 = trunc i32 %132 to i16
  %135 = add i16 %133, %134
  store i16 %135, ptr %2, align 2
  br label %166

136:                                              ; preds = %126
  %137 = call fastcc i32 @ata_mselect_control(ptr noundef %0, ptr noundef %122, i32 noundef %124, ptr noundef nonnull %2)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %179

139:                                              ; preds = %136
  %140 = add nuw nsw i32 %69, %32
  %141 = load i16, ptr %2, align 2
  %142 = trunc i32 %140 to i16
  %143 = add i16 %141, %142
  store i16 %143, ptr %2, align 2
  br label %166

144:                                              ; preds = %126
  %145 = add nuw nsw i32 %69, %32
  %146 = trunc i32 %145 to i16
  store i16 %146, ptr %2, align 2
  br label %166

147:                                              ; preds = %128
  %148 = icmp ugt i32 %123, %124
  br i1 %148, label %149, label %181

149:                                              ; preds = %147
  %150 = load i16, ptr %2, align 2
  br label %166

151:                                              ; preds = %38, %21, %14
  %152 = phi i16 [ 4, %14 ], [ 1, %38 ], [ 8, %21 ]
  %153 = phi i8 [ -1, %14 ], [ %41, %38 ], [ -1, %21 ]
  %154 = icmp eq ptr %5, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.ata_device, ptr %157, i32 0, i32 3
  %159 = load i32, ptr %158, align 4
  %160 = lshr i32 %159, 29
  %161 = and i32 %160, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %5, i32 noundef %161, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %162

162:                                              ; preds = %155, %151
  %163 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 21
  %164 = load ptr, ptr %163, align 4
  %165 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %164, i32 noundef 96, i16 noundef zeroext %152, i8 noundef zeroext %153, i1 noundef zeroext true) #19
  br label %181

166:                                              ; preds = %149, %144, %139, %131, %113, %76
  %167 = phi i16 [ %150, %149 ], [ %146, %144 ], [ %143, %139 ], [ %135, %131 ], [ %120, %113 ], [ %80, %76 ]
  %168 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  call fastcc void @ata_scsi_set_invalid_parameter(ptr noundef %169, ptr noundef %5, i16 noundef zeroext %167)
  br label %181

170:                                              ; preds = %121, %92, %90, %57, %54, %46, %42
  %171 = icmp eq ptr %5, null
  br i1 %171, label %181, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.ata_device, ptr %174, i32 0, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = lshr i32 %176, 29
  %178 = and i32 %177, 1
  call void @scsi_build_sense(ptr noundef nonnull %5, i32 noundef %178, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #19
  br label %181

179:                                              ; preds = %136, %81
  %180 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 24
  store i32 0, ptr %180, align 4
  br label %181

181:                                              ; preds = %179, %172, %170, %166, %162, %147
  %182 = phi i32 [ 1, %162 ], [ 1, %166 ], [ 1, %179 ], [ 0, %147 ], [ 1, %170 ], [ 1, %172 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #19
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_zbc_in_xlat(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 14
  %8 = load i16, ptr %7, align 4
  %9 = icmp ult i16 %8, 16
  br i1 %9, label %10, label %24, !prof !10

10:                                               ; preds = %1
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 64
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_link, ptr %14, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_device, ptr %13, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %17, i32 noundef %22, i32 noundef %11) #23
  br label %172

24:                                               ; preds = %1
  %25 = getelementptr i8, ptr %6, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr i8, ptr %6, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr i8, ptr %6, i32 6
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr i8, ptr %6, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr i8, ptr %6, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %6, i32 9
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr i8, ptr %6, i32 10
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw i32 %39, 24
  %41 = getelementptr i8, ptr %6, i32 11
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = or i32 %44, %40
  %46 = getelementptr i8, ptr %6, i32 12
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = or i32 %45, %49
  %51 = getelementptr i8, ptr %6, i32 13
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %24
  %59 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 64
  %62 = load ptr, ptr %61, align 64
  %63 = getelementptr inbounds %struct.ata_port, ptr %62, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ata_link, ptr %61, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.ata_device, ptr %60, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, %66
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %64, i32 noundef %69, i32 noundef %54, i32 noundef %56) #23
  br label %186

71:                                               ; preds = %24
  %72 = getelementptr i8, ptr %6, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 31
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  %77 = zext i8 %74 to i32
  %78 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %79, align 64
  %81 = load ptr, ptr %80, align 64
  %82 = getelementptr inbounds %struct.ata_port, ptr %81, i32 0, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ata_link, ptr %80, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ata_device, ptr %79, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, %85
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %83, i32 noundef %88, i32 noundef %77) #23
  br label %172

90:                                               ; preds = %71
  %91 = lshr i32 %50, 9
  %92 = add i32 %54, -512
  %93 = icmp ult i32 %92, 33553920
  %94 = and i32 %54, 511
  %95 = icmp eq i32 %94, 0
  %96 = and i1 %93, %95
  br i1 %96, label %110, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %99, align 64
  %101 = load ptr, ptr %100, align 64
  %102 = getelementptr inbounds %struct.ata_port, ptr %101, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ata_link, ptr %100, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.ata_device, ptr %99, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %105
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %103, i32 noundef %108, i32 noundef %54) #23
  br label %186

110:                                              ; preds = %90
  %111 = getelementptr i8, ptr %6, i32 14
  %112 = load i8, ptr %111, align 1
  %113 = and i8 %112, -65
  %114 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.ata_device, ptr %115, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 536584
  %119 = icmp eq i32 %118, 524296
  br i1 %119, label %120, label %142

120:                                              ; preds = %110
  %121 = getelementptr %struct.ata_device, ptr %115, i32 0, i32 27, i32 16
  %122 = load i8, ptr %121, align 8
  %123 = and i8 %122, 2
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 6, ptr %126, align 4
  %127 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 101, ptr %127, align 1
  %128 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  store i8 2, ptr %128, align 1
  %129 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %130 = load i32, ptr %129, align 4
  %131 = trunc i32 %130 to i8
  %132 = shl i8 %131, 3
  %133 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %132, ptr %133, align 4
  %134 = trunc i32 %91 to i8
  %135 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %134, ptr %135, align 1
  %136 = lshr i32 %45, 17
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  store i8 %137, ptr %138, align 2
  %139 = zext i8 %113 to i32
  %140 = shl nuw nsw i32 %139, 8
  %141 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 15
  store i32 %140, ptr %141, align 4
  br label %152

142:                                              ; preds = %120, %110
  %143 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 74, ptr %143, align 1
  %144 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 0, ptr %144, align 1
  %145 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 2, ptr %145, align 4
  %146 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  store i8 %113, ptr %146, align 2
  %147 = lshr i32 %45, 17
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 4
  store i8 %148, ptr %149, align 1
  %150 = trunc i32 %91 to i8
  %151 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %150, ptr %151, align 4
  br label %152

152:                                              ; preds = %142, %125
  %153 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  store i8 64, ptr %153, align 4
  %154 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %32, ptr %154, align 1
  %155 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %34, ptr %155, align 2
  %156 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %36, ptr %156, align 1
  %157 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 7
  store i8 %26, ptr %157, align 2
  %158 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 6
  store i8 %28, ptr %158, align 1
  %159 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 5
  store i8 %30, ptr %159, align 4
  %160 = load i32, ptr %2, align 4
  %161 = or i32 %160, 7
  store i32 %161, ptr %2, align 4
  %162 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, 16
  store i32 %164, ptr %162, align 4
  %165 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 27
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 14
  store i32 %166, ptr %167, align 4
  %168 = load i32, ptr %55, align 4
  %169 = add i32 %168, %166
  %170 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  store i32 %169, ptr %170, align 4
  %171 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 22
  store ptr @ata_scsi_report_zones_complete, ptr %171, align 4
  br label %195

172:                                              ; preds = %76, %10
  %173 = phi i16 [ 15, %10 ], [ 1, %76 ]
  %174 = icmp eq ptr %4, null
  br i1 %174, label %182, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.ata_device, ptr %177, i32 0, i32 3
  %179 = load i32, ptr %178, align 4
  %180 = lshr i32 %179, 29
  %181 = and i32 %180, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %181, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %182

182:                                              ; preds = %175, %172
  %183 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 21
  %184 = load ptr, ptr %183, align 4
  %185 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %184, i32 noundef 96, i16 noundef zeroext %173, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %195

186:                                              ; preds = %97, %58
  %187 = icmp eq ptr %4, null
  br i1 %187, label %195, label %188

188:                                              ; preds = %186
  %189 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.ata_device, ptr %190, i32 0, i32 3
  %192 = load i32, ptr %191, align 4
  %193 = lshr i32 %192, 29
  %194 = and i32 %193, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %194, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #19
  br label %195

195:                                              ; preds = %188, %186, %182, %152
  %196 = phi i32 [ 1, %182 ], [ 0, %152 ], [ 1, %186 ], [ 1, %188 ]
  ret i32 %196
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_zbc_out_xlat(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 14
  %10 = load i16, ptr %9, align 4
  %11 = icmp ult i16 %10, 16
  br i1 %11, label %137, label %12, !prof !10

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %8, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 31
  %16 = zext i8 %15 to i32
  %17 = add nsw i8 %15, -5
  %18 = icmp ult i8 %17, -4
  br i1 %18, label %137, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %8, i32 2
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i64
  %23 = shl nuw i64 %22, 56
  %24 = getelementptr i8, ptr %8, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 48
  %28 = or i64 %27, %23
  %29 = getelementptr i8, ptr %8, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 40
  %33 = or i64 %28, %32
  %34 = getelementptr i8, ptr %8, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i64
  %37 = shl nuw nsw i64 %36, 32
  %38 = or i64 %33, %37
  %39 = getelementptr i8, ptr %8, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 24
  %43 = or i64 %38, %42
  %44 = getelementptr i8, ptr %8, i32 7
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 16
  %48 = or i64 %43, %47
  %49 = getelementptr i8, ptr %8, i32 8
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 8
  %53 = or i64 %48, %52
  %54 = getelementptr i8, ptr %8, i32 9
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i64
  %57 = or i64 %53, %56
  %58 = getelementptr i8, ptr %8, i32 10
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw i32 %60, 24
  %62 = getelementptr i8, ptr %8, i32 11
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 16
  %66 = or i32 %65, %61
  %67 = getelementptr i8, ptr %8, i32 12
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %66, %70
  %72 = getelementptr i8, ptr %8, i32 13
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %71, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %149

77:                                               ; preds = %19
  %78 = getelementptr i8, ptr %8, i32 14
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 7
  %84 = load i64, ptr %83, align 16
  %85 = icmp ult i64 %57, %84
  %86 = trunc i64 %57 to i8
  %87 = lshr i64 %53, 8
  %88 = trunc i64 %87 to i8
  %89 = lshr exact i64 %48, 16
  %90 = trunc i64 %89 to i8
  %91 = lshr exact i64 %43, 24
  %92 = trunc i64 %91 to i8
  br i1 %85, label %93, label %137

93:                                               ; preds = %82, %77
  %94 = phi i8 [ %86, %82 ], [ 0, %77 ]
  %95 = phi i8 [ %88, %82 ], [ 0, %77 ]
  %96 = phi i8 [ %90, %82 ], [ 0, %77 ]
  %97 = phi i8 [ %92, %82 ], [ 0, %77 ]
  %98 = phi i8 [ %35, %82 ], [ 0, %77 ]
  %99 = phi i8 [ %30, %82 ], [ 0, %77 ]
  %100 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 12296
  %103 = icmp eq i32 %102, 8
  br i1 %103, label %104, label %122

104:                                              ; preds = %93
  %105 = getelementptr %struct.ata_device, ptr %6, i32 0, i32 28, i32 28
  %106 = load i8, ptr %105, align 4
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 4, ptr %110, align 4
  %111 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 99, ptr %111, align 1
  %112 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 7, ptr %112, align 1
  %113 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %114 = load i32, ptr %113, align 4
  %115 = trunc i32 %114 to i8
  %116 = shl i8 %115, 3
  %117 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %116, ptr %117, align 4
  %118 = zext i8 %80 to i32
  %119 = shl nuw nsw i32 %118, 8
  %120 = or i32 %119, %16
  %121 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 15
  store i32 %120, ptr %121, align 4
  br label %127

122:                                              ; preds = %104, %93
  %123 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %123, align 4
  %124 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 -97, ptr %124, align 1
  %125 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %15, ptr %125, align 1
  %126 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 3
  store i8 %80, ptr %126, align 2
  br label %127

127:                                              ; preds = %122, %109
  %128 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %96, ptr %128, align 1
  %129 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %95, ptr %129, align 2
  %130 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %94, ptr %130, align 1
  %131 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 7
  store i8 %99, ptr %131, align 2
  %132 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 6
  store i8 %98, ptr %132, align 1
  %133 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 5
  store i8 %97, ptr %133, align 4
  %134 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  store i8 64, ptr %134, align 4
  %135 = load i32, ptr %2, align 4
  %136 = or i32 %135, 7
  store i32 %136, ptr %2, align 4
  br label %156

137:                                              ; preds = %82, %12, %1
  %138 = phi i16 [ 15, %1 ], [ 1, %12 ], [ 2, %82 ]
  %139 = icmp eq ptr %4, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 29
  %144 = and i32 %143, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %144, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %145

145:                                              ; preds = %140, %137
  %146 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 21
  %147 = load ptr, ptr %146, align 4
  %148 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %147, i32 noundef 96, i16 noundef zeroext %138, i8 noundef zeroext -1, i1 noundef zeroext true) #19
  br label %156

149:                                              ; preds = %19
  %150 = icmp eq ptr %4, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %149
  %152 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %153, 29
  %155 = and i32 %154, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %4, i32 noundef %155, i8 noundef zeroext 5, i8 noundef zeroext 26, i8 noundef zeroext 0) #19
  br label %156

156:                                              ; preds = %151, %149, %145, %127
  %157 = phi i32 [ 1, %145 ], [ 0, %127 ], [ 1, %149 ], [ 1, %151 ]
  ret i32 %157
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_security_inout_xlat(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %7 = getelementptr i8, ptr %5, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = load i8, ptr %5, align 1
  %10 = icmp eq i8 %9, -75
  %11 = getelementptr i8, ptr %5, i32 2
  %12 = load i16, ptr %11, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #19
  %14 = getelementptr i8, ptr %5, i32 6
  %15 = load i32, ptr %14, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #19
  %17 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_device, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4096
  %22 = icmp eq i32 %21, 0
  %23 = icmp eq i8 %8, -17
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = icmp eq ptr %3, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = lshr i32 %20, 29
  %28 = and i32 %27, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %28, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %29

29:                                               ; preds = %26, %24
  %30 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 21
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %31, i32 noundef 96, i16 noundef zeroext 1, i8 noundef zeroext 0, i1 noundef zeroext true) #19
  br label %103

33:                                               ; preds = %1
  %34 = getelementptr i8, ptr %5, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 7
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = icmp ugt i32 %16, 65535
  br i1 %39, label %40, label %63

40:                                               ; preds = %38
  %41 = icmp eq ptr %3, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = lshr i32 %20, 29
  %44 = and i32 %43, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %44, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %45

45:                                               ; preds = %42, %40
  %46 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 21
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %47, i32 noundef 96, i16 noundef zeroext 6, i8 noundef zeroext 0, i1 noundef zeroext true) #19
  br label %103

49:                                               ; preds = %33
  %50 = icmp ugt i32 %16, 33553920
  br i1 %50, label %51, label %60

51:                                               ; preds = %49
  %52 = icmp eq ptr %3, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %51
  %54 = lshr i32 %20, 29
  %55 = and i32 %54, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %55, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %56

56:                                               ; preds = %53, %51
  %57 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 21
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %58, i32 noundef 96, i16 noundef zeroext 6, i8 noundef zeroext 0, i1 noundef zeroext true) #19
  br label %103

60:                                               ; preds = %49
  %61 = add nuw nsw i32 %16, 511
  %62 = lshr i32 %61, 9
  br label %63

63:                                               ; preds = %60, %38
  %64 = phi i32 [ %16, %38 ], [ %62, %60 ]
  %65 = select i1 %22, i8 2, i8 1
  %66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 %65, ptr %66, align 4
  %67 = load i32, ptr %6, align 4
  %68 = select i1 %10, i32 30, i32 22
  %69 = or i32 %67, %68
  store i32 %69, ptr %6, align 4
  %70 = icmp eq i32 %64, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %63
  %72 = select i1 %22, i8 93, i8 92
  %73 = select i1 %22, i8 95, i8 94
  %74 = select i1 %10, i8 %73, i8 %72
  %75 = trunc i16 %13 to i8
  %76 = lshr i16 %13, 8
  %77 = trunc i16 %76 to i8
  %78 = trunc i32 %64 to i8
  %79 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 %78, ptr %79, align 4
  %80 = lshr i32 %64, 8
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %81, ptr %82, align 1
  br label %88

83:                                               ; preds = %63
  %84 = trunc i16 %13 to i8
  %85 = lshr i16 %13, 8
  %86 = trunc i16 %85 to i8
  %87 = select i1 %10, i8 %86, i8 -128
  br label %88

88:                                               ; preds = %83, %71
  %89 = phi i8 [ 91, %83 ], [ %74, %71 ]
  %90 = phi i8 [ %84, %83 ], [ %75, %71 ]
  %91 = phi i8 [ %87, %83 ], [ %77, %71 ]
  %92 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 %89, ptr %92, align 1
  %93 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %8, ptr %93, align 1
  %94 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 %90, ptr %94, align 2
  %95 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 %91, ptr %95, align 1
  %96 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 27
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 14
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 17, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %97
  %102 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  store i32 %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %88, %56, %45, %29
  %104 = phi i32 [ 1, %29 ], [ 1, %45 ], [ 0, %88 ], [ 1, %56 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_start_stop_xlat(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 14
  %6 = load i16, ptr %5, align 4
  %7 = icmp ult i16 %6, 5
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %4, align 4
  %12 = or i32 %11, 6
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %13, align 4
  %14 = getelementptr i8, ptr %10, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %8
  %20 = icmp ult i8 %15, 16
  br i1 %20, label %21, label %54

21:                                               ; preds = %19
  %22 = and i32 %16, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ata_device, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = or i32 %11, 22
  store i32 %33, ptr %4, align 4
  %34 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  %35 = load i8, ptr %34, align 4
  %36 = or i8 %35, 64
  store i8 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i8 [ 0, %32 ], [ 1, %24 ]
  %39 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 10
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 0, ptr %41, align 1
  %42 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 64, ptr %42, align 1
  br label %70

43:                                               ; preds = %21
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.ata_port, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 2048
  %48 = icmp ne i32 %47, 0
  %49 = load i32, ptr @system_state, align 4
  %50 = icmp eq i32 %49, 5
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %68, label %52

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 -32, ptr %53, align 1
  br label %70

54:                                               ; preds = %19, %8, %1
  %55 = phi i8 [ -1, %1 ], [ 1, %8 ], [ 3, %19 ]
  %56 = icmp eq ptr %3, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ata_device, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 29
  %63 = and i32 %62, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %3, i32 noundef %63, i8 noundef zeroext 5, i8 noundef zeroext 36, i8 noundef zeroext 0) #19
  br label %64

64:                                               ; preds = %57, %54
  %65 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 21
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %66, i32 noundef 96, i16 noundef zeroext 4, i8 noundef zeroext %55, i1 noundef zeroext true) #19
  br label %70

68:                                               ; preds = %43
  %69 = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  store i32 0, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %64, %52, %37
  %71 = phi i32 [ 1, %64 ], [ 1, %68 ], [ 0, %52 ], [ 0, %37 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_build_rw_tf(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_mselect_caching(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %6 = icmp eq i32 %2, 18
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @llvm.smin.i32(i32 %2, i32 18)
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 2
  br label %107

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %1, align 1
  %14 = and i8 %13, 4
  %15 = getelementptr inbounds %struct.ata_device, ptr %12, i32 0, i32 25
  %16 = getelementptr i16, ptr %15, i32 87
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, -16384
  %19 = icmp eq i16 %18, 16384
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = getelementptr i16, ptr %15, i32 85
  %22 = load i16, ptr %21, align 2
  %23 = trunc i16 %22 to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 32
  %26 = xor i8 %25, 32
  br label %29

27:                                               ; preds = %94, %90, %86, %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %29
  %28 = phi i16 [ 1, %29 ], [ 2, %34 ], [ 3, %38 ], [ 4, %42 ], [ 5, %46 ], [ 6, %50 ], [ 7, %54 ], [ 8, %58 ], [ 9, %62 ], [ 10, %66 ], [ 11, %70 ], [ 12, %74 ], [ 13, %78 ], [ 14, %82 ], [ 15, %86 ], [ 16, %90 ], [ 17, %94 ]
  store i16 %28, ptr %3, align 2
  br label %107

29:                                               ; preds = %20, %10
  %30 = phi i8 [ %26, %20 ], [ 32, %10 ]
  %31 = getelementptr i8, ptr %1, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %1, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %27

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %1, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %27

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %1, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %27

46:                                               ; preds = %42
  %47 = getelementptr i8, ptr %1, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %27

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %1, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %27

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %1, i32 7
  %56 = load i8, ptr %55, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %27

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %1, i32 8
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %27

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %1, i32 9
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %27

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %1, i32 10
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %30, %68
  br i1 %69, label %70, label %27

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %1, i32 11
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %27

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %1, i32 12
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %27

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %1, i32 13
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %27

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %1, i32 14
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %27

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %1, i32 15
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %27

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %1, i32 16
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %27

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %1, i32 17
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %27

98:                                               ; preds = %94
  %99 = load i32, ptr %5, align 4
  %100 = or i32 %99, 6
  store i32 %100, ptr %5, align 4
  %101 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 9
  store i8 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 -17, ptr %103, align 1
  %104 = icmp eq i8 %14, 0
  %105 = select i1 %104, i8 -126, i8 2
  %106 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  store i8 %105, ptr %106, align 1
  br label %107

107:                                              ; preds = %98, %27, %7
  %108 = phi i32 [ -22, %7 ], [ -22, %27 ], [ 0, %98 ]
  ret i32 %108
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_mselect_control(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = icmp eq i32 %2, 10
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @llvm.smin.i32(i32 %2, i32 10)
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %3, align 2
  br label %59

9:                                                ; preds = %48, %44, %40, %36, %32, %28, %24, %20, %11
  %10 = phi i16 [ 1, %11 ], [ 2, %20 ], [ 3, %24 ], [ 4, %28 ], [ 5, %32 ], [ 6, %36 ], [ 7, %40 ], [ 8, %44 ], [ 9, %48 ]
  store i16 %10, ptr %3, align 2
  br label %59

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %1, align 1
  %15 = getelementptr inbounds %struct.ata_device, ptr %13, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %1, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9

20:                                               ; preds = %11
  %21 = getelementptr i8, ptr %1, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %9

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %1, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %9

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %1, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %9

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %1, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %9

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %1, i32 6
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, -1
  br i1 %39, label %40, label %9

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %1, i32 7
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, -1
  br i1 %43, label %44, label %9

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %1, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %9

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %1, i32 9
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 30
  br i1 %51, label %52, label %9

52:                                               ; preds = %48
  %53 = and i8 %14, 4
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = or i32 %16, 536870912
  store i32 %56, ptr %15, align 4
  br label %59

57:                                               ; preds = %52
  %58 = and i32 %16, -536870913
  store i32 %58, ptr %15, align 4
  br label %59

59:                                               ; preds = %57, %55, %9, %6
  %60 = phi i32 [ -22, %6 ], [ -22, %9 ], [ 0, %57 ], [ 0, %55 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_scsi_set_invalid_parameter(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 29
  %9 = and i32 %8, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %1, i32 noundef %9, i8 noundef zeroext 5, i8 noundef zeroext 38, i8 noundef zeroext 0) #19
  br label %10

10:                                               ; preds = %5, %3
  %11 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @scsi_set_sense_field_pointer(ptr noundef %12, i32 noundef 96, i16 noundef zeroext %2, i8 noundef zeroext -1, i1 noundef zeroext false) #19
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_set_sense_field_pointer(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ata_scsi_report_zones_complete(ptr noundef %0) #0 {
  %2 = alloca %struct.sg_mapping_iter, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %2, i8 0, i32 44, i1 false), !annotation !16
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  call void @sg_miter_start(ptr noundef nonnull %2, ptr noundef %6, i32 noundef %8, i32 noundef 3) #19
  %9 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #19, !srcloc !25
  %10 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %2) #19
  br i1 %10, label %11, label %67

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sg_mapping_iter, ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.sg_mapping_iter, ptr %2, i32 0, i32 2
  br label %17

14:                                               ; preds = %63, %34
  %15 = phi i32 [ %36, %34 ], [ %65, %63 ]
  %16 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %2) #19
  br i1 %16, label %17, label %67

17:                                               ; preds = %14, %11
  %18 = phi i32 [ 0, %11 ], [ %15, %14 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load ptr, ptr %12, align 4
  %22 = load i32, ptr %21, align 1
  %23 = getelementptr i8, ptr %21, i32 4
  %24 = load i16, ptr %23, align 1
  %25 = getelementptr i8, ptr %21, i32 8
  %26 = load i64, ptr %25, align 1
  %27 = getelementptr i8, ptr %21, i32 16
  %28 = load i64, ptr %27, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %22) #19
  store i32 %29, ptr %21, align 1
  %30 = trunc i16 %24 to i8
  %31 = and i8 %30, 15
  store i8 %31, ptr %23, align 1
  %32 = call i64 @llvm.bswap.i64(i64 %26) #19
  store i64 %32, ptr %25, align 1
  %33 = call i64 @llvm.bswap.i64(i64 %28) #19
  store i64 %33, ptr %27, align 1
  br label %34

34:                                               ; preds = %20, %17
  %35 = phi i32 [ 64, %20 ], [ 0, %17 ]
  %36 = phi i32 [ 64, %20 ], [ %18, %17 ]
  %37 = load i32, ptr %13, align 4
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %14

39:                                               ; preds = %63, %34
  %40 = phi i32 [ %65, %63 ], [ %36, %34 ]
  %41 = phi i32 [ %58, %63 ], [ %35, %34 ]
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  %44 = load i8, ptr %43, align 1
  %45 = and i8 %44, 15
  %46 = getelementptr i8, ptr %43, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr i8, ptr %43, i32 8
  %49 = load i64, ptr %48, align 1
  %50 = getelementptr i8, ptr %43, i32 16
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr i8, ptr %43, i32 24
  %53 = load i64, ptr %52, align 1
  store i8 %45, ptr %43, align 1
  %54 = and i8 %47, -13
  store i8 %54, ptr %46, align 1
  %55 = call i64 @llvm.bswap.i64(i64 %49) #19
  store i64 %55, ptr %48, align 1
  %56 = call i64 @llvm.bswap.i64(i64 %51) #19
  store i64 %56, ptr %50, align 1
  %57 = call i64 @llvm.bswap.i64(i64 %53) #19
  store i64 %57, ptr %52, align 1
  %58 = add i32 %41, 64
  %59 = load i32, ptr %13, align 4
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %61, label %63, !prof !10

61:                                               ; preds = %39
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 3360, i32 noundef 9, ptr noundef null) #19
  %62 = load i32, ptr %13, align 4
  br label %63

63:                                               ; preds = %61, %39
  %64 = phi i32 [ %62, %61 ], [ %59, %39 ]
  %65 = add i32 %40, 64
  %66 = icmp ult i32 %58, %64
  br i1 %66, label %39, label %14

67:                                               ; preds = %14, %1
  call void @sg_miter_stop(ptr noundef nonnull %2) #19
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #19, !srcloc !26
  call void @ata_scsi_qc_complete(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ata_scsi_qc_complete(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = load i8, ptr %9, align 1
  switch i8 %13, label %21 [
    i8 -123, label %14
    i8 -95, label %14
  ]

14:                                               ; preds = %1, %1
  %15 = getelementptr i8, ptr %9, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = and i8 %16, 32
  %18 = icmp ne i8 %17, 0
  %19 = select i1 %18, i1 true, i1 %12
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call fastcc void @ata_gen_passthru_sense(ptr noundef %0)
  br label %99

21:                                               ; preds = %14, %1
  %22 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 131072
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  store i32 2, ptr %27, align 4
  br label %99

28:                                               ; preds = %21
  br i1 %12, label %29, label %97

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  %33 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 21
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ata_port_operations, ptr %36, i32 0, i32 22
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = zext i1 %39 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  store i8 0, ptr %2, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  store i8 0, ptr %3, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  store i8 0, ptr %4, align 1, !annotation !16
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %34, i8 0, i32 96, i1 false) #19
  %41 = getelementptr inbounds %struct.ata_device, ptr %31, i32 0, i32 9
  %42 = load i32, ptr %41, align 64
  switch i32 %42, label %50 [
    i32 8, label %43
    i32 6, label %43
    i32 4, label %43
    i32 2, label %43
    i32 10, label %43
  ]

43:                                               ; preds = %29, %29, %29, %29, %29
  %44 = icmp eq ptr %7, null
  br i1 %44, label %96, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.ata_device, ptr %31, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 29
  %49 = and i32 %48, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %7, i32 noundef %49, i8 noundef zeroext 2, i8 noundef zeroext 4, i8 noundef zeroext 33) #19
  br label %96

50:                                               ; preds = %29
  %51 = load i32, ptr %10, align 4
  %52 = icmp eq i32 %51, 0
  %53 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 14
  %54 = load i8, ptr %53, align 1
  br i1 %52, label %55, label %59

55:                                               ; preds = %50
  %56 = zext i8 %54 to i32
  %57 = and i32 %56, 169
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %55, %50
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.ata_port, ptr %60, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 8
  %64 = load i8, ptr %63, align 1
  call fastcc void @ata_to_sense_error(i32 noundef %62, i8 noundef zeroext %54, i8 noundef zeroext %64, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %40) #19
  %65 = icmp eq ptr %7, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %59
  %67 = load i8, ptr %4, align 1
  %68 = load i8, ptr %3, align 1
  %69 = load i8, ptr %2, align 1
  %70 = getelementptr inbounds %struct.ata_device, ptr %31, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 29
  %73 = and i32 %72, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %7, i32 noundef %73, i8 noundef zeroext %69, i8 noundef zeroext %68, i8 noundef zeroext %67) #19
  br label %74

74:                                               ; preds = %66, %59
  %75 = tail call i64 @ata_tf_read_block(ptr noundef %32, ptr noundef %31) #19
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %96, label %94

77:                                               ; preds = %55
  %78 = load ptr, ptr %31, align 64
  %79 = load ptr, ptr %78, align 64
  %80 = getelementptr inbounds %struct.ata_port, ptr %79, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.ata_link, ptr %78, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ata_device, ptr %31, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, %83
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %81, i32 noundef %86, i32 noundef %56, i32 noundef 0) #23
  %88 = icmp eq ptr %7, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.ata_device, ptr %31, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = lshr i32 %91, 29
  %93 = and i32 %92, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %7, i32 noundef %93, i8 noundef zeroext 11, i8 noundef zeroext 0, i8 noundef zeroext 0) #19
  br label %96

94:                                               ; preds = %74
  %95 = tail call i32 @scsi_set_sense_information(ptr noundef %34, i32 noundef 96, i64 noundef %75) #19
  br label %96

96:                                               ; preds = %94, %89, %77, %74, %45, %43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  br label %100

97:                                               ; preds = %28
  %98 = getelementptr inbounds %struct.scsi_cmnd, ptr %7, i32 0, i32 24
  store i32 0, ptr %98, align 4
  br label %165

99:                                               ; preds = %26, %20
  br i1 %12, label %100, label %165

100:                                              ; preds = %99, %96
  %101 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.ata_port_operations, ptr %102, i32 0, i32 22
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %165

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 14
  %108 = load i8, ptr %107, align 1
  %109 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 8
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %108 to i32
  %112 = and i32 %111, 128
  %113 = icmp eq i32 %112, 0
  %114 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 5
  %115 = load i32, ptr %114, align 4
  br i1 %113, label %118, label %116

116:                                              ; preds = %106
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %115, i32 noundef %111) #23
  br label %165

118:                                              ; preds = %106
  %119 = and i32 %111, 64
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.19, ptr @.str.18
  %122 = and i32 %111, 32
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, ptr @.str.19, ptr @.str.20
  %125 = and i32 %111, 16
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, ptr @.str.19, ptr @.str.21
  %128 = and i32 %111, 8
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr @.str.19, ptr @.str.22
  %131 = and i32 %111, 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, ptr @.str.19, ptr @.str.23
  %134 = and i32 %111, 2
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %135, ptr @.str.19, ptr @.str.24
  %137 = and i32 %111, 1
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %138, ptr @.str.19, ptr @.str.25
  %140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %115, i32 noundef %111, ptr noundef nonnull %121, ptr noundef nonnull %124, ptr noundef nonnull %127, ptr noundef nonnull %130, ptr noundef nonnull %133, ptr noundef nonnull %136, ptr noundef nonnull %139) #23
  %141 = icmp eq i8 %110, 0
  br i1 %141, label %165, label %142

142:                                              ; preds = %118
  %143 = load i32, ptr %114, align 4
  %144 = zext i8 %110 to i32
  %145 = and i32 %144, 4
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, ptr @.str.19, ptr @.str.27
  %148 = and i32 %144, 128
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %146, ptr @.str.29, ptr @.str.28
  %151 = select i1 %149, ptr @.str.19, ptr %150
  %152 = and i32 %144, 64
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, ptr @.str.19, ptr @.str.30
  %155 = and i32 %144, 16
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %156, ptr @.str.19, ptr @.str.31
  %158 = and i32 %144, 2
  %159 = icmp eq i32 %158, 0
  %160 = select i1 %159, ptr @.str.19, ptr @.str.32
  %161 = and i32 %144, 1
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, ptr @.str.19, ptr @.str.33
  %164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %143, i32 noundef %144, ptr noundef nonnull %147, ptr noundef nonnull %151, ptr noundef nonnull %154, ptr noundef nonnull %157, ptr noundef nonnull %160, ptr noundef nonnull %163) #23
  br label %165

165:                                              ; preds = %142, %118, %116, %100, %99, %97
  %166 = load ptr, ptr %6, align 4
  %167 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  tail call void @ata_qc_free(ptr noundef %0) #19
  tail call void %168(ptr noundef %166) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_gen_passthru_sense(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  %8 = getelementptr inbounds %struct.scsi_cmnd, ptr %6, i32 0, i32 21
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_port_operations, ptr %13, i32 0, i32 22
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  store i8 0, ptr %2, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  store i8 0, ptr %3, align 1, !annotation !16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  store i8 0, ptr %4, align 1, !annotation !16
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %9, i8 0, i32 96, i1 false)
  %16 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 14
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, -87
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %18, i1 %22, i1 false
  br i1 %23, label %43, label %24

24:                                               ; preds = %1
  %25 = icmp eq ptr %15, null
  %26 = zext i1 %25 to i32
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 8
  %31 = load i8, ptr %30, align 1
  call fastcc void @ata_to_sense_error(i32 noundef %29, i8 noundef zeroext %20, i8 noundef zeroext %31, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %26)
  %32 = icmp eq ptr %6, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %24
  %34 = load i8, ptr %4, align 1
  %35 = load i8, ptr %3, align 1
  %36 = load i8, ptr %2, align 1
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ata_device, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 29
  %42 = and i32 %41, 1
  tail call void @scsi_build_sense(ptr noundef nonnull %6, i32 noundef %42, i8 noundef zeroext %36, i8 noundef zeroext %35, i8 noundef zeroext %34) #19
  br label %44

43:                                               ; preds = %1
  tail call void @scsi_build_sense(ptr noundef %6, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 29) #19
  br label %44

44:                                               ; preds = %43, %33, %24
  %45 = load ptr, ptr %8, align 4
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 126
  %48 = icmp ugt i8 %47, 113
  br i1 %48, label %49, label %102

49:                                               ; preds = %44
  %50 = getelementptr i8, ptr %9, i32 7
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %52, 8
  %54 = tail call ptr @scsi_sense_desc_find(ptr noundef %9, i32 noundef %53, i32 noundef 9) #19
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = icmp ugt i8 %51, 82
  br i1 %57, label %152, label %58

58:                                               ; preds = %56
  %59 = add nuw nsw i8 %51, 14
  store i8 %59, ptr %50, align 1
  %60 = getelementptr i8, ptr %10, i32 %52
  br label %61

61:                                               ; preds = %58, %49
  %62 = phi ptr [ %54, %49 ], [ %60, %58 ]
  store i8 9, ptr %62, align 1
  %63 = getelementptr i8, ptr %62, i32 1
  store i8 12, ptr %63, align 1
  %64 = getelementptr i8, ptr %62, i32 2
  store i8 0, ptr %64, align 1
  %65 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 8
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr i8, ptr %62, i32 3
  store i8 %66, ptr %67, align 1
  %68 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 9
  %69 = load i8, ptr %68, align 4
  %70 = getelementptr i8, ptr %62, i32 5
  store i8 %69, ptr %70, align 1
  %71 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 10
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr i8, ptr %62, i32 7
  store i8 %72, ptr %73, align 1
  %74 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 11
  %75 = load i8, ptr %74, align 2
  %76 = getelementptr i8, ptr %62, i32 9
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 12
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr i8, ptr %62, i32 11
  store i8 %78, ptr %79, align 1
  %80 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 13
  %81 = load i8, ptr %80, align 4
  %82 = getelementptr i8, ptr %62, i32 12
  store i8 %81, ptr %82, align 1
  %83 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 14
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr i8, ptr %62, i32 13
  store i8 %84, ptr %85, align 1
  %86 = load i32, ptr %7, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %152, label %89

89:                                               ; preds = %61
  store i8 1, ptr %64, align 1
  %90 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 4
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr i8, ptr %62, i32 4
  store i8 %91, ptr %92, align 1
  %93 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 5
  %94 = load i8, ptr %93, align 4
  %95 = getelementptr i8, ptr %62, i32 6
  store i8 %94, ptr %95, align 1
  %96 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 6
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr i8, ptr %62, i32 8
  store i8 %97, ptr %98, align 1
  %99 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 7
  %100 = load i8, ptr %99, align 2
  %101 = getelementptr i8, ptr %62, i32 10
  store i8 %100, ptr %101, align 1
  br label %152

102:                                              ; preds = %44
  %103 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 8
  %104 = load i8, ptr %103, align 1
  store i8 %104, ptr %10, align 1
  %105 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 14
  %106 = load i8, ptr %105, align 1
  %107 = getelementptr i8, ptr %9, i32 9
  store i8 %106, ptr %107, align 1
  %108 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 13
  %109 = load i8, ptr %108, align 4
  %110 = getelementptr i8, ptr %9, i32 10
  store i8 %109, ptr %110, align 1
  %111 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 9
  %112 = load i8, ptr %111, align 4
  %113 = getelementptr i8, ptr %9, i32 11
  store i8 %112, ptr %113, align 1
  %114 = getelementptr i8, ptr %9, i32 15
  store i8 0, ptr %114, align 1
  %115 = load i32, ptr %7, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %142, label %118

118:                                              ; preds = %102
  %119 = getelementptr i8, ptr %9, i32 16
  %120 = load i8, ptr %119, align 1
  %121 = or i8 %120, -128
  store i8 %121, ptr %119, align 1
  %122 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 4
  %123 = load i8, ptr %122, align 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = or i8 %120, -64
  store i8 %126, ptr %119, align 1
  br label %127

127:                                              ; preds = %125, %118
  %128 = phi i8 [ %126, %125 ], [ %121, %118 ]
  %129 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 5
  %130 = load i8, ptr %129, align 4
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 6
  %134 = load i8, ptr %133, align 1
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 7
  %138 = load i8, ptr %137, align 2
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %136, %132, %127
  %141 = or i8 %128, 32
  store i8 %141, ptr %119, align 1
  br label %142

142:                                              ; preds = %140, %136, %102
  %143 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 10
  %144 = load i8, ptr %143, align 1
  %145 = getelementptr i8, ptr %9, i32 17
  store i8 %144, ptr %145, align 1
  %146 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 11
  %147 = load i8, ptr %146, align 2
  %148 = getelementptr i8, ptr %9, i32 18
  store i8 %147, ptr %148, align 1
  %149 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 12
  %150 = load i8, ptr %149, align 1
  %151 = getelementptr i8, ptr %9, i32 19
  store i8 %150, ptr %151, align 1
  br label %152

152:                                              ; preds = %142, %89, %61, %56
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_to_sense_error(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = zext i8 %1 to i32
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8 %2, i8 0
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %7
  %14 = and i8 %11, -47
  %15 = icmp eq i8 %14, -47
  br i1 %15, label %16, label %24

16:                                               ; preds = %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %13
  %17 = phi i32 [ 0, %13 ], [ 1, %24 ], [ 2, %27 ], [ 3, %30 ], [ 4, %33 ], [ 5, %36 ], [ 6, %39 ], [ 7, %42 ], [ 8, %45 ], [ 9, %48 ], [ 10, %51 ], [ 11, %54 ], [ 12, %57 ]
  %18 = getelementptr [14 x [4 x i8]], ptr @ata_to_sense_error.sense_table, i32 0, i32 %17, i32 1
  %19 = load i8, ptr %18, align 1
  store i8 %19, ptr %3, align 1
  %20 = getelementptr [14 x [4 x i8]], ptr @ata_to_sense_error.sense_table, i32 0, i32 %17, i32 2
  %21 = load i8, ptr %20, align 1
  store i8 %21, ptr %4, align 1
  %22 = getelementptr [14 x [4 x i8]], ptr @ata_to_sense_error.sense_table, i32 0, i32 %17, i32 3
  %23 = load i8, ptr %22, align 1
  br label %82

24:                                               ; preds = %13
  %25 = and i8 %11, -48
  %26 = icmp eq i8 %25, -48
  br i1 %26, label %16, label %27

27:                                               ; preds = %24
  %28 = and i8 %11, 97
  %29 = icmp eq i8 %28, 97
  br i1 %29, label %16, label %30

30:                                               ; preds = %27
  %31 = and i8 %11, -124
  %32 = icmp eq i8 %31, -124
  br i1 %32, label %16, label %33

33:                                               ; preds = %30
  %34 = and i8 %11, 55
  %35 = icmp eq i8 %34, 55
  br i1 %35, label %16, label %36

36:                                               ; preds = %33
  %37 = and i8 %11, 9
  %38 = icmp eq i8 %37, 9
  br i1 %38, label %16, label %39

39:                                               ; preds = %36
  %40 = and i8 %11, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %16

42:                                               ; preds = %39
  %43 = and i8 %11, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %16

45:                                               ; preds = %42
  %46 = and i8 %11, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %16

48:                                               ; preds = %45
  %49 = and i8 %11, 16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %16

51:                                               ; preds = %48
  %52 = and i8 %11, 32
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %16

54:                                               ; preds = %51
  %55 = and i8 %11, 64
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %16

57:                                               ; preds = %54
  %58 = icmp slt i8 %11, 0
  br i1 %58, label %16, label %59

59:                                               ; preds = %57, %7
  %60 = icmp sgt i8 %1, -1
  br i1 %60, label %69, label %61

61:                                               ; preds = %78, %75, %72, %69, %59
  %62 = phi i32 [ 0, %59 ], [ 1, %69 ], [ 2, %72 ], [ 3, %75 ], [ 4, %78 ]
  %63 = getelementptr [6 x [4 x i8]], ptr @ata_to_sense_error.stat_table, i32 0, i32 %62, i32 1
  %64 = load i8, ptr %63, align 1
  store i8 %64, ptr %3, align 1
  %65 = getelementptr [6 x [4 x i8]], ptr @ata_to_sense_error.stat_table, i32 0, i32 %62, i32 2
  %66 = load i8, ptr %65, align 1
  store i8 %66, ptr %4, align 1
  %67 = getelementptr [6 x [4 x i8]], ptr @ata_to_sense_error.stat_table, i32 0, i32 %62, i32 3
  %68 = load i8, ptr %67, align 1
  br label %82

69:                                               ; preds = %59
  %70 = and i8 %1, 64
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %61

72:                                               ; preds = %69
  %73 = and i8 %1, 32
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %61

75:                                               ; preds = %72
  %76 = and i8 %1, 8
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %61

78:                                               ; preds = %75
  %79 = and i8 %1, 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %61

81:                                               ; preds = %78
  store i8 11, ptr %3, align 1
  store i8 0, ptr %4, align 1
  br label %82

82:                                               ; preds = %81, %61, %16
  %83 = phi i8 [ 0, %81 ], [ %68, %61 ], [ %23, %16 ]
  store i8 %83, ptr %5, align 1
  %84 = icmp eq i32 %6, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = zext i8 %11 to i32
  %87 = load i8, ptr %3, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, ptr %4, align 1
  %90 = zext i8 %89 to i32
  %91 = zext i8 %83 to i32
  %92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %0, i32 noundef %8, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %91) #23
  br label %93

93:                                               ; preds = %85, %82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_sense_desc_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atapi_qc_complete(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_port_operations, ptr %9, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %1
  %14 = icmp eq i32 %6, 0
  %15 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 131072
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %14, i1 %18, i1 false
  br i1 %19, label %52, label %20, !prof !27

20:                                               ; preds = %13
  %21 = and i32 %16, 131072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @ata_gen_passthru_sense(ptr noundef %0)
  br label %24

24:                                               ; preds = %23, %20
  %25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 5
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 30
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ata_device, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 41
  %36 = load i64, ptr %35, align 4
  %37 = and i64 %36, -17
  store i64 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %28, %24
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.scsi_cmnd, ptr %39, i32 0, i32 24
  store i32 2, ptr %40, align 4
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void @ata_qc_free(ptr noundef %0) #19
  tail call void %43(ptr noundef %41) #19
  br label %83

44:                                               ; preds = %1
  %45 = and i32 %6, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 24
  store i32 2, ptr %48, align 4
  tail call fastcc void @atapi_request_sense(ptr noundef %0)
  br label %83

49:                                               ; preds = %44
  %50 = icmp eq i32 %6, 0
  br i1 %50, label %52, label %51, !prof !8

51:                                               ; preds = %49
  tail call fastcc void @ata_gen_passthru_sense(ptr noundef %0)
  br label %79

52:                                               ; preds = %49, %13
  %53 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 16
  %54 = load ptr, ptr %53, align 4
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 18
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %54, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = and i8 %59, 3
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store i32 0, ptr %2, align 4, !annotation !16
  %63 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 17, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = call i32 @sg_copy_to_buffer(ptr noundef %64, i32 noundef %66, ptr noundef nonnull %2, i32 noundef 4) #19
  %68 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 2
  %69 = load i8, ptr %68, align 2
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  store i8 5, ptr %68, align 2
  %72 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  store i8 50, ptr %72, align 1
  br label %73

73:                                               ; preds = %71, %62
  %74 = load ptr, ptr %63, align 4
  %75 = load i32, ptr %65, align 4
  %76 = call i32 @sg_copy_from_buffer(ptr noundef %74, i32 noundef %75, ptr noundef nonnull %2, i32 noundef 4) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  br label %77

77:                                               ; preds = %73, %57, %52
  %78 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 24
  store i32 0, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %51
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  call void @ata_qc_free(ptr noundef %0) #19
  call void %82(ptr noundef %80) #19
  br label %83

83:                                               ; preds = %79, %47, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atapi_check_dma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atapi_request_sense(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %4, i32 0, i32 21
  %6 = load ptr, ptr %5, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(96) %6, i8 0, i32 96, i1 false)
  %7 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 42
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  tail call void %10(ptr noundef %2, ptr noundef %13) #19
  br label %14

14:                                               ; preds = %12, %1
  %15 = load ptr, ptr %5, align 4
  store i8 112, ptr %15, align 1
  %16 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %17 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  %18 = load i8, ptr %17, align 1
  %19 = lshr i8 %18, 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 2
  store i8 %19, ptr %21, align 1
  %22 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 11
  store i32 3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 15
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 14
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %23, i8 0, i64 16, i1 false) #19
  store i32 512, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %16, i8 0, i32 24, i1 false) #19
  %32 = load ptr, ptr %31, align 64
  %33 = load ptr, ptr %32, align 64
  %34 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 9
  %35 = load i8, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 2
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.ata_device, ptr %31, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i8 -96, i8 -80
  %41 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 13
  store i8 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 14
  store i8 64, ptr %42, align 1
  %43 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 8
  store i8 0, ptr %43, align 1
  %44 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 16
  %45 = load ptr, ptr %5, align 4
  tail call void @sg_init_one(ptr noundef %44, ptr noundef %45, i32 noundef 96) #19
  tail call void @ata_sg_init(ptr noundef %0, ptr noundef %44, i32 noundef 1) #19
  store i32 2, ptr %22, align 4
  %46 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 5
  %47 = load ptr, ptr %30, align 4
  %48 = getelementptr inbounds %struct.ata_device, ptr %47, i32 0, i32 17
  %49 = load i32, ptr %48, align 8
  tail call void @llvm.memset.p0.i32(ptr align 4 %46, i8 0, i32 %49, i1 false)
  store i8 3, ptr %46, align 4
  %50 = getelementptr %struct.ata_queued_cmd, ptr %0, i32 0, i32 5, i32 4
  store i8 96, ptr %50, align 4
  %51 = load i32, ptr %16, align 4
  %52 = or i32 %51, 6
  store i32 %52, ptr %16, align 4
  %53 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  store i8 -96, ptr %53, align 1
  %54 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %14
  %59 = load i8, ptr %17, align 1
  %60 = or i8 %59, 1
  store i8 %60, ptr %17, align 1
  br label %64

61:                                               ; preds = %14
  %62 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 11
  store i8 96, ptr %62, align 2
  %63 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 12
  store i8 0, ptr %63, align 1
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i8 [ 9, %61 ], [ 10, %58 ]
  %66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  store i8 %65, ptr %66, align 4
  store i32 96, ptr %27, align 4
  %67 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 22
  store ptr @atapi_sense_complete, ptr %67, align 4
  tail call void @ata_qc_issue(ptr noundef %0) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sg_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atapi_sense_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call fastcc void @ata_gen_passthru_sense(ptr noundef %0)
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  tail call void @ata_qc_free(ptr noundef %0) #19
  tail call void %13(ptr noundef %11) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_issue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_qc_new_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #18

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { argmemonly nofree nounwind readonly willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind readonly }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 4000000, i32 4001}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2149016629}
!12 = !{i64 2149012453}
!13 = !{i64 2149012528, i64 2149012555, i64 2149012602, i64 2149012624, i64 2149012652, i64 2149012672}
!14 = !{i64 443203}
!15 = !{i64 2149040773}
!16 = !{!"auto-init"}
!17 = !{i64 360403, i64 360430, i64 360452, i64 360480}
!18 = !{i64 360811, i64 360838, i64 360871, i64 360892, i64 360919, i64 360945}
!19 = !{i64 3670000}
!20 = !{i64 3670197}
!21 = !{i64 2151155476}
!22 = !{i64 2151174466, i64 2151174491}
!23 = !{i64 2154873405, i64 2154873685, i64 2154874019, i64 2154874353}
!24 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!25 = !{i64 442958, i64 443019}
!26 = !{i64 445975}
!27 = !{!"branch_weights", i32 2000, i32 2002}
