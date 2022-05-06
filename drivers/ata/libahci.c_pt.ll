; ModuleID = '/llk/IR/drivers/ata/libahci.c_pt.bc'
source_filename = "../drivers/ata/libahci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_ignore_sss:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_ignore_sss\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_ignore_sss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_shost_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_shost_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_shost_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_sdev_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_pmp_retry_srst_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_pmp_retry_srst_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_pmp_retry_srst_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_save_initial_config:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_save_initial_config\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_save_initial_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_start_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_start_engine\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_start_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_stop_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_stop_engine\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_stop_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_start_fis_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_start_fis_rx\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_start_fis_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_reset_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_reset_controller\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_reset_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_reset_em:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_reset_em\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_reset_em:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_init_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_init_controller\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_init_controller:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_dev_classify\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_fill_cmd_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_fill_cmd_slot\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_fill_cmd_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_kick_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_kick_engine\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_kick_engine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_check_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_check_ready\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_check_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_do_softreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_do_softreset\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_do_softreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_do_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_do_hardreset\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_do_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_handle_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_handle_port_intr\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_handle_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_qc_issue\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_port_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_print_info\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_print_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_set_em_messages:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_set_em_messages\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_set_em_messages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_host_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_host_activate\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_host_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }
%struct.ahci_sg = type { i32, i32, i32, i32 }
%struct.ahci_cmd_hdr = type { i32, i32, i32, i32, [4 x i32] }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }

@ahci_ignore_sss = dso_local global i32 0, align 4
@__kstrtab_ahci_ignore_sss = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_ignore_sss = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_ignore_sss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_ignore_sss to i32), ptr @__kstrtab_ahci_ignore_sss, ptr @__kstrtabns_ahci_ignore_sss }, section "___ksymtab_gpl+ahci_ignore_sss", align 4
@__param_str_skip_host_reset = internal constant [24 x i8] c"libahci.skip_host_reset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ahci_skip_host_reset = internal global i32 0, align 4
@__param_skip_host_reset = internal constant %struct.kernel_param { ptr @__param_str_skip_host_reset, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @ahci_skip_host_reset } }, section "__param", align 4
@__UNIQUE_ID_skip_host_resettype291 = internal constant [37 x i8] c"libahci.parmtype=skip_host_reset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_skip_host_reset292 = internal constant [75 x i8] c"libahci.parm=skip_host_reset:skip global host reset (0=don't skip, 1=skip)\00", section ".modinfo", align 1
@__param_str_ignore_sss = internal constant [19 x i8] c"libahci.ignore_sss\00", align 1
@__param_ignore_sss = internal constant %struct.kernel_param { ptr @__param_str_ignore_sss, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @ahci_ignore_sss } }, section "__param", align 4
@__UNIQUE_ID_ignore_ssstype293 = internal constant [32 x i8] c"libahci.parmtype=ignore_sss:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_sss294 = internal constant [80 x i8] c"libahci.parm=ignore_sss:Ignore staggered spinup flag (0=don't ignore, 1=ignore)\00", section ".modinfo", align 1
@ahci_shost_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ahci_shost_attrs, ptr null }, align 4
@ahci_shost_groups = dso_local global [2 x ptr] [ptr @ahci_shost_attr_group, ptr null], align 4
@__kstrtab_ahci_shost_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_shost_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_shost_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_shost_groups to i32), ptr @__kstrtab_ahci_shost_groups, ptr @__kstrtabns_ahci_shost_groups }, section "___ksymtab_gpl+ahci_shost_groups", align 4
@ahci_sdev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ahci_sdev_attrs, ptr null }, align 4
@ahci_sdev_groups = dso_local global [2 x ptr] [ptr @ahci_sdev_attr_group, ptr null], align 4
@__kstrtab_ahci_sdev_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_sdev_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_sdev_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_sdev_groups to i32), ptr @__kstrtab_ahci_sdev_groups, ptr @__kstrtabns_ahci_sdev_groups }, section "___ksymtab_gpl+ahci_sdev_groups", align 4
@sata_pmp_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ahci_ops = dso_local global %struct.ata_port_operations { ptr @ahci_pmp_qc_defer, ptr null, ptr @ahci_qc_prep, ptr @ahci_qc_issue, ptr @ahci_qc_fill_rtf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_dev_config, ptr @ahci_freeze, ptr @ahci_thaw, ptr null, ptr @ahci_softreset, ptr @ahci_hardreset, ptr @ahci_postreset, ptr null, ptr @ahci_softreset, ptr null, ptr null, ptr @ahci_error_handler, ptr null, ptr @ahci_post_internal_cmd, ptr null, ptr null, ptr @ahci_scr_read, ptr @ahci_scr_write, ptr @ahci_pmp_attach, ptr @ahci_pmp_detach, ptr @ahci_set_lpm, ptr @ahci_port_suspend, ptr @ahci_port_resume, ptr @ahci_port_start, ptr @ahci_port_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_led_show, ptr @ahci_led_store, ptr @ahci_activity_show, ptr @ahci_activity_store, ptr @ahci_transmit_led_message, ptr null, ptr null, ptr @sata_pmp_port_ops }, align 4
@__kstrtab_ahci_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_ops to i32), ptr @__kstrtab_ahci_ops, ptr @__kstrtabns_ahci_ops }, section "___ksymtab_gpl+ahci_ops", align 4
@ahci_pmp_retry_srst_ops = dso_local global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_pmp_retry_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@__kstrtab_ahci_pmp_retry_srst_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_pmp_retry_srst_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_pmp_retry_srst_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_pmp_retry_srst_ops to i32), ptr @__kstrtab_ahci_pmp_retry_srst_ops, ptr @__kstrtabns_ahci_pmp_retry_srst_ops }, section "___ksymtab_gpl+ahci_pmp_retry_srst_ops", align 4
@__param_str_ahci_em_messages = internal constant [25 x i8] c"libahci.ahci_em_messages\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ahci_em_messages = internal global i8 1, section ".data..read_mostly", align 1
@__param_ahci_em_messages = internal constant %struct.kernel_param { ptr @__param_str_ahci_em_messages, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @ahci_em_messages } }, section "__param", align 4
@__UNIQUE_ID_ahci_em_messagestype295 = internal constant [39 x i8] c"libahci.parmtype=ahci_em_messages:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ahci_em_messages296 = internal constant [90 x i8] c"libahci.parm=ahci_em_messages:AHCI Enclosure Management Message control (0 = off, 1 = on)\00", section ".modinfo", align 1
@__param_str_devslp_idle_timeout = internal constant [28 x i8] c"libahci.devslp_idle_timeout\00", align 1
@devslp_idle_timeout = internal global i32 1000, section ".data..read_mostly", align 4
@__param_devslp_idle_timeout = internal constant %struct.kernel_param { ptr @__param_str_devslp_idle_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @devslp_idle_timeout } }, section "__param", align 4
@__UNIQUE_ID_devslp_idle_timeouttype297 = internal constant [41 x i8] c"libahci.parmtype=devslp_idle_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_devslp_idle_timeout298 = internal constant [59 x i8] c"libahci.parm=devslp_idle_timeout:device sleep idle timeout\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [46 x i8] c"controller can't do 64bit DMA, forcing 32bit\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"controller can't do NCQ, turning off CAP_NCQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"controller can do NCQ, turning on CAP_NCQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"controller can't do PMP, turning off CAP_PMP\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"controller can't do SNTF, turning off CAP_SNTF\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"controller can't do DEVSLP, turning off\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"controller can do FBS, turning on CAP_FBS\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"controller can't do FBS, turning off CAP_FBS\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"controller can do ALPM, turning on CAP_ALPM\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"controller does not support SXS, disabling CAP_SXS\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"forcing port_map 0x%x -> 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"masking port_map 0x%x -> 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"implemented port map (0x%x) contains more ports than nr_ports (%u), using nr_ports\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"forcing PORTS_IMPL to 0x%x\0A\00", align 1
@__kstrtab_ahci_save_initial_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_save_initial_config = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_save_initial_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_save_initial_config to i32), ptr @__kstrtab_ahci_save_initial_config, ptr @__kstrtabns_ahci_save_initial_config }, section "___ksymtab_gpl+ahci_save_initial_config", align 4
@__kstrtab_ahci_start_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_start_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_start_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_start_engine to i32), ptr @__kstrtab_ahci_start_engine, ptr @__kstrtabns_ahci_start_engine }, section "___ksymtab_gpl+ahci_start_engine", align 4
@.str.15 = private unnamed_addr constant [30 x i8] c"AHCI controller unavailable!\0A\00", align 1
@__kstrtab_ahci_stop_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_stop_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_stop_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_stop_engine to i32), ptr @__kstrtab_ahci_stop_engine, ptr @__kstrtabns_ahci_stop_engine }, section "___ksymtab_gpl+ahci_stop_engine", align 4
@__kstrtab_ahci_start_fis_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_start_fis_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_start_fis_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_start_fis_rx to i32), ptr @__kstrtab_ahci_start_fis_rx, ptr @__kstrtabns_ahci_start_fis_rx }, section "___ksymtab_gpl+ahci_start_fis_rx", align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"controller reset failed (0x%x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"skipping global host reset\0A\00", align 1
@__kstrtab_ahci_reset_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_reset_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_reset_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_reset_controller to i32), ptr @__kstrtab_ahci_reset_controller, ptr @__kstrtabns_ahci_reset_controller }, section "___ksymtab_gpl+ahci_reset_controller", align 4
@__kstrtab_ahci_reset_em = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_reset_em = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_reset_em = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_reset_em to i32), ptr @__kstrtab_ahci_reset_em, ptr @__kstrtabns_ahci_reset_em }, section "___ksymtab_gpl+ahci_reset_em", align 4
@__kstrtab_ahci_init_controller = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_init_controller = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_init_controller = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_init_controller to i32), ptr @__kstrtab_ahci_init_controller, ptr @__kstrtabns_ahci_init_controller }, section "___ksymtab_gpl+ahci_init_controller", align 4
@__kstrtab_ahci_dev_classify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_dev_classify = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_dev_classify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_dev_classify to i32), ptr @__kstrtab_ahci_dev_classify, ptr @__kstrtabns_ahci_dev_classify }, section "___ksymtab_gpl+ahci_dev_classify", align 4
@__kstrtab_ahci_fill_cmd_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_fill_cmd_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_fill_cmd_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_fill_cmd_slot to i32), ptr @__kstrtab_ahci_fill_cmd_slot, ptr @__kstrtabns_ahci_fill_cmd_slot }, section "___ksymtab_gpl+ahci_fill_cmd_slot", align 4
@__kstrtab_ahci_kick_engine = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_kick_engine = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_kick_engine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_kick_engine to i32), ptr @__kstrtab_ahci_kick_engine, ptr @__kstrtabns_ahci_kick_engine }, section "___ksymtab_gpl+ahci_kick_engine", align 4
@.str.18 = private unnamed_addr constant [49 x i8] c"\014ata%u.%02u: failed to reset engine (errno=%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"\014ata%u: failed to reset engine (errno=%d)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.20 = private unnamed_addr constant [15 x i8] c"1st FIS failed\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"\016ata%u.%02u: device not ready, treating as offline\0A\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"\016ata%u: device not ready, treating as offline\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"device not ready\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"\013ata%u.%02u: softreset failed (%s)\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"\013ata%u: softreset failed (%s)\0A\00", align 1
@__kstrtab_ahci_check_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_check_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_check_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_check_ready to i32), ptr @__kstrtab_ahci_check_ready, ptr @__kstrtabns_ahci_check_ready }, section "___ksymtab_gpl+ahci_check_ready", align 4
@__kstrtab_ahci_do_softreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_do_softreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_do_softreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_do_softreset to i32), ptr @__kstrtab_ahci_do_softreset, ptr @__kstrtabns_ahci_do_softreset }, section "___ksymtab_gpl+ahci_do_softreset", align 4
@__kstrtab_ahci_do_hardreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_do_hardreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_do_hardreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_do_hardreset to i32), ptr @__kstrtab_ahci_do_hardreset, ptr @__kstrtabns_ahci_do_hardreset }, section "___ksymtab_gpl+ahci_do_hardreset", align 4
@.str.26 = private unnamed_addr constant [31 x i8] c"interrupt on disabled port %u\0A\00", align 1
@__kstrtab_ahci_handle_port_intr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_handle_port_intr = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_handle_port_intr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_handle_port_intr to i32), ptr @__kstrtab_ahci_handle_port_intr, ptr @__kstrtabns_ahci_handle_port_intr }, section "___ksymtab_gpl+ahci_handle_port_intr", align 4
@__kstrtab_ahci_qc_issue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_qc_issue = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_qc_issue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_qc_issue to i32), ptr @__kstrtab_ahci_qc_issue, ptr @__kstrtabns_ahci_qc_issue }, section "___ksymtab_gpl+ahci_qc_issue", align 4
@__kstrtab_ahci_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_error_handler to i32), ptr @__kstrtab_ahci_error_handler, ptr @__kstrtabns_ahci_error_handler }, section "___ksymtab_gpl+ahci_error_handler", align 4
@__kstrtab_ahci_port_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_port_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_port_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_port_resume to i32), ptr @__kstrtab_ahci_port_resume, ptr @__kstrtabns_ahci_port_resume }, section "___ksymtab_gpl+ahci_port_resume", align 4
@.str.27 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"AHCI %02x%02x.%02x%02x %u slots %u ports %s Gbps 0x%x impl %s mode\0A\00", align 1
@.str.32 = private unnamed_addr constant [55 x i8] c"flags: %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"64bit \00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"ncq \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"sntf \00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"ilck \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"stag \00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"pm \00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"led \00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"clo \00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"only \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"pmp \00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"fbs \00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"pio \00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"slum \00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"part \00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"ccc \00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ems \00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"sxs \00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"deso \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"sadm \00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"sds \00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"apst \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"nvmp \00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"boh \00", align 1
@__kstrtab_ahci_print_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_print_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_print_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_print_info to i32), ptr @__kstrtab_ahci_print_info, ptr @__kstrtabns_ahci_print_info }, section "___ksymtab_gpl+ahci_print_info", align 4
@__kstrtab_ahci_set_em_messages = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_set_em_messages = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_set_em_messages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_set_em_messages to i32), ptr @__kstrtab_ahci_set_em_messages, ptr @__kstrtabns_ahci_set_em_messages }, section "___ksymtab_gpl+ahci_set_em_messages", align 4
@.str.57 = private unnamed_addr constant [71 x i8] c"both AHCI_HFLAG_MULTI_MSI flag set and custom irq handler implemented\0A\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"AHCI_HFLAG_MULTI_MSI requires ->get_irq_vector!\0A\00", align 1
@__kstrtab_ahci_host_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_host_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_host_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_host_activate to i32), ptr @__kstrtab_ahci_host_activate, ptr @__kstrtabns_ahci_host_activate }, section "___ksymtab_gpl+ahci_host_activate", align 4
@__UNIQUE_ID_author301 = internal constant [27 x i8] c"libahci.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [56 x i8] c"libahci.description=Common AHCI SATA low-level routines\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [33 x i8] c"libahci.file=drivers/ata/libahci\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [20 x i8] c"libahci.license=GPL\00", section ".modinfo", align 1
@ahci_shost_attrs = internal global [10 x ptr] [ptr @dev_attr_link_power_management_policy, ptr @dev_attr_em_message_type, ptr @dev_attr_em_message, ptr @dev_attr_ahci_host_caps, ptr @dev_attr_ahci_host_cap2, ptr @dev_attr_ahci_host_version, ptr @dev_attr_ahci_port_cmd, ptr @dev_attr_em_buffer, ptr @dev_attr_em_message_supported, ptr null], align 4
@dev_attr_link_power_management_policy = external dso_local global %struct.device_attribute, align 4
@dev_attr_em_message_type = external dso_local global %struct.device_attribute, align 4
@dev_attr_em_message = external dso_local global %struct.device_attribute, align 4
@dev_attr_ahci_host_caps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @ahci_show_host_caps, ptr null }, align 4
@dev_attr_ahci_host_cap2 = internal global %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @ahci_show_host_cap2, ptr null }, align 4
@dev_attr_ahci_host_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @ahci_show_host_version, ptr null }, align 4
@dev_attr_ahci_port_cmd = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @ahci_show_port_cmd, ptr null }, align 4
@dev_attr_em_buffer = internal global %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420 }, ptr @ahci_read_em_buffer, ptr @ahci_store_em_buffer }, align 4
@dev_attr_em_message_supported = internal global %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @ahci_show_em_supported, ptr null }, align 4
@.str.59 = private unnamed_addr constant [15 x i8] c"ahci_host_caps\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"ahci_host_cap2\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ahci_host_version\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"ahci_port_cmd\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"em_buffer\00", align 1
@__func__.ahci_read_em_buffer = private unnamed_addr constant [20 x i8] c"ahci_read_em_buffer\00", align 1
@.str.65 = private unnamed_addr constant [71 x i8] c"\014ata%u: EM read buffer size too large: buffer size %u, page size %lu\0A\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"em_message_supported\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"%s%s%s%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"saf-te \00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"ses-2 \00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"sgpio \00", align 1
@ahci_sdev_attrs = internal global [5 x ptr] [ptr @dev_attr_sw_activity, ptr @dev_attr_unload_heads, ptr @dev_attr_ncq_prio_supported, ptr @dev_attr_ncq_prio_enable, ptr null], align 4
@dev_attr_sw_activity = external dso_local global %struct.device_attribute, align 4
@dev_attr_unload_heads = external dso_local global %struct.device_attribute, align 4
@dev_attr_ncq_prio_supported = external dso_local global %struct.device_attribute, align 4
@dev_attr_ncq_prio_enable = external dso_local global %struct.device_attribute, align 4
@.str.71 = private unnamed_addr constant [22 x i8] c"drivers/ata/libahci.c\00", align 1
@ahci_scr_offset.offset = internal unnamed_addr constant [5 x i32] [i32 40, i32 48, i32 44, i32 52, i32 60], align 4
@.str.72 = private unnamed_addr constant [36 x i8] c"port does not support device sleep\0A\00", align 1
@.str.73 = private unnamed_addr constant [40 x i8] c"\014ata%u.%02u: failed to disable DEVSLP\0A\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"\014ata%u.%02u: failed to enable DEVSLP\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%lx\0A\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@.str.77 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"failed to stop engine\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"failed stop FIS RX\00", align 1
@.str.80 = private unnamed_addr constant [59 x i8] c"\016ata%u.%02u: SB600 AHCI: limiting to 255 sectors per cmd\0A\00", align 1
@.str.81 = private unnamed_addr constant [57 x i8] c"\014ata%u.%02u: applying PMP SRST workaround and retrying\0A\00", align 1
@.str.82 = private unnamed_addr constant [52 x i8] c"\014ata%u: applying PMP SRST workaround and retrying\0A\00", align 1
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@ahci_handle_port_interrupt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"irq_stat 0x%08x\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"unknown FIS %08x %08x %08x %08x\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"incorrect PMP\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"host bus error\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"interface fatal error\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.89 = private unnamed_addr constant [26 x i8] c"connection status changed\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"PHY RDY changed\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.91 = private unnamed_addr constant [30 x i8] c"failed to clear device error\0A\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"FBS is enabled\0A\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"Failed to enable FBS\0A\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"Failed to disable FBS\0A\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"FBS is disabled\0A\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"\013ata%u: %s (%d)\0A\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"port %d can do FBS, forcing FBSCP\0A\00", align 1
@.str.99 = private unnamed_addr constant [31 x i8] c"port %d is not capable of FBS\0A\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"\014ata%u: %s (%d)\0A\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"irq %d\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_ahci_em_messages296, ptr @__UNIQUE_ID_ahci_em_messagestype295, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_devslp_idle_timeout298, ptr @__UNIQUE_ID_devslp_idle_timeouttype297, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_ignore_sss294, ptr @__UNIQUE_ID_ignore_ssstype293, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_skip_host_reset292, ptr @__UNIQUE_ID_skip_host_resettype291, ptr @__ksymtab_ahci_check_ready, ptr @__ksymtab_ahci_dev_classify, ptr @__ksymtab_ahci_do_hardreset, ptr @__ksymtab_ahci_do_softreset, ptr @__ksymtab_ahci_error_handler, ptr @__ksymtab_ahci_fill_cmd_slot, ptr @__ksymtab_ahci_handle_port_intr, ptr @__ksymtab_ahci_host_activate, ptr @__ksymtab_ahci_ignore_sss, ptr @__ksymtab_ahci_init_controller, ptr @__ksymtab_ahci_kick_engine, ptr @__ksymtab_ahci_ops, ptr @__ksymtab_ahci_pmp_retry_srst_ops, ptr @__ksymtab_ahci_port_resume, ptr @__ksymtab_ahci_print_info, ptr @__ksymtab_ahci_qc_issue, ptr @__ksymtab_ahci_reset_controller, ptr @__ksymtab_ahci_reset_em, ptr @__ksymtab_ahci_save_initial_config, ptr @__ksymtab_ahci_sdev_groups, ptr @__ksymtab_ahci_set_em_messages, ptr @__ksymtab_ahci_shost_groups, ptr @__ksymtab_ahci_start_engine, ptr @__ksymtab_ahci_start_fis_rx, ptr @__ksymtab_ahci_stop_engine, ptr @__param_ahci_em_messages, ptr @__param_devslp_idle_timeout, ptr @__param_ignore_sss, ptr @__param_skip_host_reset], section "llvm.metadata"
@switch.table.ahci_print_info = private unnamed_addr constant [3 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_pmp_qc_defer(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 27
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 48
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_port_priv, ptr %8, i32 0, i32 11
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6, %1
  %13 = tail call i32 @ata_std_qc_defer(ptr noundef %0) #10
  br label %16

14:                                               ; preds = %6
  %15 = tail call i32 @sata_pmp_qc_defer_cmd_switch(ptr noundef %0) #10
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_qc_prep(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 8
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %struct.ahci_port_priv, ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, 2816
  %15 = getelementptr i8, ptr %11, i32 %14
  %16 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 64
  %19 = getelementptr inbounds %struct.ata_link, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  tail call void @ata_tf_to_fis(ptr noundef %5, i8 noundef zeroext %21, i32 noundef 1, ptr noundef %15) #10
  br i1 %9, label %28, label %22

22:                                               ; preds = %1
  %23 = getelementptr i8, ptr %15, i32 64
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(32) %23, i8 0, i32 32, i1 false)
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %16, align 4
  %26 = getelementptr inbounds %struct.ata_device, ptr %25, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 4 %24, i32 %27, i1 false)
  br label %28

28:                                               ; preds = %22, %1
  %29 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %59, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %15, i32 128
  %35 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %53, %41 ], [ %40, %38 ]
  %43 = phi i32 [ %52, %41 ], [ 0, %38 ]
  %44 = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.ahci_sg, ptr %34, i32 %43
  store i32 %45, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ahci_sg, ptr %48, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = add i32 %47, -1
  %51 = getelementptr inbounds %struct.ahci_sg, ptr %48, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  %52 = add nuw i32 %43, 1
  %53 = tail call ptr @sg_next(ptr noundef %42) #10
  %54 = load i32, ptr %35, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %41, label %56

56:                                               ; preds = %41
  %57 = shl i32 %52, 16
  %58 = or i32 %57, 5
  br label %59

59:                                               ; preds = %56, %33, %28
  %60 = phi i32 [ 5, %28 ], [ 5, %33 ], [ %58, %56 ]
  %61 = load ptr, ptr %16, align 4
  %62 = load ptr, ptr %61, align 64
  %63 = getelementptr inbounds %struct.ata_link, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = shl i32 %64, 12
  %66 = or i32 %65, %60
  %67 = load i32, ptr %5, align 4
  %68 = shl i32 %67, 3
  %69 = and i32 %68, 64
  %70 = or i32 %66, %69
  %71 = or i32 %70, 160
  %72 = select i1 %9, i32 %70, i32 %71
  %73 = load i32, ptr %12, align 4
  %74 = getelementptr inbounds %struct.ahci_port_priv, ptr %4, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = mul i32 %73, 2816
  %77 = add i32 %75, %76
  %78 = getelementptr inbounds %struct.ahci_port_priv, ptr %4, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr %struct.ahci_cmd_hdr, ptr %79, i32 %73
  store i32 %72, ptr %80, align 4
  %81 = load ptr, ptr %78, align 4
  %82 = getelementptr %struct.ahci_cmd_hdr, ptr %81, i32 %73, i32 1
  store i32 0, ptr %82, align 4
  %83 = load ptr, ptr %78, align 4
  %84 = getelementptr %struct.ahci_cmd_hdr, ptr %83, i32 %73, i32 2
  store i32 %77, ptr %84, align 4
  %85 = load ptr, ptr %78, align 4
  %86 = getelementptr %struct.ahci_cmd_hdr, ptr %85, i32 %73, i32 3
  store i32 0, ptr %86, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_qc_issue(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = shl i32 %6, 7
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 64
  store ptr %18, ptr %15, align 4
  %19 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = shl nuw i32 1, %25
  %27 = getelementptr i8, ptr %13, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #10, !srcloc !10
  br label %28

28:                                               ; preds = %23, %1
  %29 = getelementptr inbounds %struct.ahci_port_priv, ptr %15, i32 0, i32 11
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ahci_port_priv, ptr %15, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = load ptr, ptr %16, align 4
  %36 = load ptr, ptr %35, align 64
  %37 = getelementptr inbounds %struct.ata_link, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %32
  %41 = getelementptr i8, ptr %13, i32 64
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !12
  %43 = and i32 %42, -3843
  %44 = load ptr, ptr %16, align 4
  %45 = load ptr, ptr %44, align 64
  %46 = getelementptr inbounds %struct.ata_link, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %48, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %49) #10, !srcloc !10
  %50 = load ptr, ptr %16, align 4
  %51 = load ptr, ptr %50, align 64
  %52 = getelementptr inbounds %struct.ata_link, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %33, align 4
  br label %54

54:                                               ; preds = %40, %32, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !14
  tail call void @arm_heavy_mb() #10
  %55 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %56 = load i32, ptr %55, align 4
  %57 = shl nuw i32 1, %56
  %58 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %57) #10, !srcloc !10
  %59 = load ptr, ptr %16, align 4
  %60 = load ptr, ptr %59, align 64
  %61 = getelementptr inbounds %struct.ata_link, ptr %60, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.ata_link, ptr %60, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %60, align 64
  %69 = getelementptr inbounds %struct.ata_port, ptr %68, i32 0, i32 48
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr %struct.ahci_port_priv, ptr %70, i32 0, i32 13, i32 %67, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4
  %74 = getelementptr %struct.ahci_port_priv, ptr %70, i32 0, i32 13, i32 %67, i32 1
  %75 = getelementptr inbounds %struct.hlist_node, ptr %74, i32 0, i32 1
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = add i32 %79, 1
  %81 = tail call i32 @mod_timer(ptr noundef %74, i32 noundef %80) #10
  br label %82

82:                                               ; preds = %78, %65, %54
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @ahci_qc_fill_rtf(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ahci_port_priv, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ahci_port_priv, ptr %4, i32 0, i32 11
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.ata_link, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 8
  %17 = getelementptr i8, ptr %6, i32 %16
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi ptr [ %17, %10 ], [ %6, %1 ]
  %20 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr i8, ptr %19, i32 32
  %34 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %33, ptr noundef %34) #10
  %35 = getelementptr i8, ptr %19, i32 47
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21, i32 14
  store i8 %36, ptr %37, align 1
  br label %41

38:                                               ; preds = %27, %23, %18
  %39 = getelementptr i8, ptr %19, i32 64
  %40 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %39, ptr noundef %40) #10
  br label %41

41:                                               ; preds = %38, %32
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_dev_config(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 16
  store i32 255, ptr %12, align 4
  %13 = load ptr, ptr %2, align 64
  %14 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_link, ptr %2, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %15, i32 noundef %20) #11
  br label %22

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_freeze(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = shl i32 %5, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #10, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_thaw(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %7, i32 256
  %11 = shl i32 %9, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  tail call void @arm_heavy_mb() #10
  %17 = load i32, ptr %8, align 4
  %18 = shl nuw i32 1, %17
  %19 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %18) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %20 = getelementptr inbounds %struct.ahci_port_priv, ptr %14, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #10, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_softreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %14 = load ptr, ptr %13, align 64
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %3
  %17 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12, %9
  %20 = phi i32 [ %18, %16 ], [ 15, %12 ], [ 15, %9 ]
  %21 = tail call i32 @ahci_do_softreset(ptr noundef %0, ptr noundef %1, i32 noundef %20, i32 noundef %2, ptr noundef nonnull @ahci_check_ready)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_hardreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !20
  %5 = call i32 @ahci_do_hardreset(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_postreset(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 256
  %13 = shl i32 %7, 7
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void @ata_std_postreset(ptr noundef %0, ptr noundef %1) #10
  %15 = getelementptr i8, ptr %14, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %17 = load i32, ptr %1, align 4
  %18 = icmp eq i32 %17, 3
  %19 = and i32 %16, -16777217
  %20 = select i1 %18, i32 16777216, i32 0
  %21 = or i32 %20, %19
  %22 = icmp eq i32 %21, %16
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %21) #10, !srcloc !10
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  br label %25

25:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_error_handler(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 16
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0) #10
  %14 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 25
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #10
  br label %16

16:                                               ; preds = %10, %1
  tail call void @sata_pmp_error_handler(ptr noundef %0) #10
  %17 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 9
  %18 = load i32, ptr %17, align 64
  switch i32 %18, label %19 [
    i32 7, label %23
    i32 5, label %23
    i32 3, label %23
    i32 1, label %23
    i32 9, label %23
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0) #10
  br label %23

23:                                               ; preds = %19, %16, %16, %16, %16, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_post_internal_cmd(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = tail call i32 @ahci_kick_engine(ptr noundef %7)
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_scr_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 256
  %14 = shl i32 %8, 7
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = icmp ult i32 %1, 5
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = icmp eq i32 %1, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 536870912
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19, %17
  %25 = getelementptr [5 x i32], ptr @ahci_scr_offset.offset, i32 0, i32 %1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %15, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  store i32 %28, ptr %2, align 4
  br label %29

29:                                               ; preds = %24, %19, %3
  %30 = phi i32 [ 0, %24 ], [ -22, %19 ], [ -22, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_scr_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 256
  %14 = shl i32 %8, 7
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = icmp ult i32 %1, 5
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = icmp eq i32 %1, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 536870912
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19, %17
  %25 = getelementptr [5 x i32], ptr @ahci_scr_offset.offset, i32 0, i32 %1
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %27 = getelementptr i8, ptr %15, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %2) #10, !srcloc !10
  br label %28

28:                                               ; preds = %24, %19, %3
  %29 = phi i32 [ 0, %24 ], [ -22, %19 ], [ -22, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_pmp_attach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = shl i32 %5, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %17 = or i32 %16, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %17) #10, !srcloc !10
  tail call fastcc void @ahci_enable_fbs(ptr noundef %0)
  %18 = getelementptr inbounds %struct.ahci_port_priv, ptr %14, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 8388608
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 16
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %26 = load i32, ptr %18, align 4
  %27 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #10, !srcloc !10
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_pmp_detach(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = shl i32 %5, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @ahci_disable_fbs(ptr noundef %0)
  %15 = getelementptr i8, ptr %12, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !29
  %17 = and i32 %16, -131073
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !30
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %17) #10, !srcloc !10
  %18 = getelementptr inbounds %struct.ahci_port_priv, ptr %14, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -8388609
  store i32 %20, ptr %18, align 4
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 16
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !31
  tail call void @arm_heavy_mb() #10
  %26 = load i32, ptr %18, align 4
  %27 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %26) #10, !srcloc !10
  br label %28

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_set_lpm(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 48
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 256
  %16 = shl i32 %12, 7
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = icmp eq i32 %1, 1
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = and i32 %2, -5
  %21 = getelementptr inbounds %struct.ahci_port_priv, ptr %10, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -4194305
  store i32 %23, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !32
  tail call void @arm_heavy_mb() #10
  %24 = load i32, ptr %21, align 4
  %25 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #10, !srcloc !10
  %26 = tail call i32 @sata_link_scr_lpm(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #10
  br label %27

27:                                               ; preds = %19, %3
  %28 = phi i32 [ %20, %19 ], [ %2, %3 ]
  %29 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 67108864
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %17, i32 24
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !33
  %36 = and i32 %28, 2
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %18, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = and i32 %28, 4
  %41 = icmp eq i32 %40, 0
  %42 = and i32 %35, -469762049
  %43 = select i1 %41, i32 %42, i32 %35
  %44 = or i32 %43, 268435456
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !34
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %44) #10, !srcloc !10
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !35
  tail call void @ata_msleep(ptr noundef %4, i32 noundef 10) #10
  br i1 %41, label %54, label %75

46:                                               ; preds = %33
  %47 = or i32 %35, 67108864
  switch i32 %1, label %52 [
    i32 5, label %48
    i32 4, label %50
  ]

48:                                               ; preds = %46
  %49 = or i32 %35, 201326592
  br label %52

50:                                               ; preds = %46
  %51 = and i32 %47, -134217729
  br label %52

52:                                               ; preds = %50, %48, %46
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ], [ %47, %46 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !36
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %53) #10, !srcloc !10
  br label %54

54:                                               ; preds = %52, %39, %27
  %55 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 24
  %58 = icmp eq i32 %57, 24
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 134217728
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = and i32 %1, -2
  %66 = icmp eq i32 %65, 4
  tail call fastcc void @ahci_set_aggressive_devslp(ptr noundef %4, i1 noundef zeroext %66)
  br label %67

67:                                               ; preds = %64, %59, %54
  br i1 %18, label %68, label %75

68:                                               ; preds = %67
  %69 = tail call i32 @sata_link_scr_lpm(ptr noundef %0, i32 noundef 1, i1 noundef zeroext false) #10
  %70 = getelementptr inbounds %struct.ahci_port_priv, ptr %10, i32 0, i32 9
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %71, 4194304
  store i32 %72, ptr %70, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %73 = load i32, ptr %70, align 4
  %74 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %73) #10, !srcloc !10
  br label %75

75:                                               ; preds = %68, %67, %39
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_port_suspend(ptr noundef %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 26
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahci_host_priv, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 256
  %20 = shl i32 %14, 7
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr i8, ptr %21, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !38
  %24 = and i32 %23, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #10, !srcloc !10
  %25 = tail call i32 @ata_wait_register(ptr noundef %0, ptr noundef %22, i32 noundef 16384, i32 noundef 16384, i32 noundef 10, i32 noundef 1000) #10
  %26 = and i32 %25, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %11
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.ata_host, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ahci_host_priv, ptr %31, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 134217728
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ahci_host_priv, ptr %31, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 256
  %40 = load i32, ptr %13, align 4
  %41 = shl i32 %40, 7
  %42 = getelementptr i8, ptr %39, i32 %41
  %43 = getelementptr i8, ptr %42, i32 44
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !40
  %45 = and i32 %44, -16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !41
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %45) #10, !srcloc !10
  %46 = getelementptr i8, ptr %42, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  %48 = and i32 %47, 268435453
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %48) #10, !srcloc !10
  br label %56

49:                                               ; preds = %11, %2
  %50 = phi ptr [ @.str.78, %2 ], [ @.str.79, %11 ]
  %51 = phi i32 [ %9, %2 ], [ -16, %11 ]
  %52 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %53, ptr noundef nonnull %50, i32 noundef %51) #11
  %55 = tail call i32 @ata_port_freeze(ptr noundef %0) #10
  br label %56

56:                                               ; preds = %49, %36, %28
  %57 = phi i32 [ %51, %49 ], [ 0, %28 ], [ 0, %36 ]
  %58 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 32
  %59 = load ptr, ptr %58, align 32
  %60 = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 5) #10
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_port_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 32
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 256
  %14 = shl i32 %10, 7
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr i8, ptr %15, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !44
  %18 = and i32 %17, 268435455
  %19 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 134217728
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = or i32 %18, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !45
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %24) #10, !srcloc !10
  br label %25

25:                                               ; preds = %23, %1
  %26 = phi i32 [ %24, %23 ], [ %18, %1 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %27 = or i32 %26, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %27) #10, !srcloc !10
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.ata_host, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %32 = load ptr, ptr %31, align 4
  tail call void @ahci_start_fis_rx(ptr noundef %0) #10
  %33 = load i32, ptr %30, align 4
  %34 = and i32 %33, 32768
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.ahci_host_priv, ptr %30, i32 0, i32 25
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0) #10
  br label %39

39:                                               ; preds = %36, %25
  %40 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2097152
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %92, label %44

44:                                               ; preds = %39
  %45 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %92, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  br label %49

49:                                               ; preds = %89, %47
  %50 = phi ptr [ %45, %47 ], [ %90, %89 ]
  %51 = getelementptr inbounds %struct.ata_link, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.ahci_port_priv, ptr %32, i32 0, i32 13, i32 %52, i32 4
  %54 = load ptr, ptr %48, align 4
  %55 = getelementptr inbounds %struct.ata_port_operations, ptr %54, i32 0, i32 57
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %53, align 4
  %58 = tail call i32 %56(ptr noundef %0, i32 noundef %57, i32 noundef 4) #10
  %59 = icmp eq i32 %58, -16
  br i1 %59, label %60, label %89

60:                                               ; preds = %49
  tail call void @msleep(i32 noundef 1) #10
  %61 = load ptr, ptr %48, align 4
  %62 = getelementptr inbounds %struct.ata_port_operations, ptr %61, i32 0, i32 57
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %53, align 4
  %65 = tail call i32 %63(ptr noundef %0, i32 noundef %64, i32 noundef 4) #10
  %66 = icmp eq i32 %65, -16
  br i1 %66, label %67, label %89

67:                                               ; preds = %60
  tail call void @msleep(i32 noundef 1) #10
  %68 = load ptr, ptr %48, align 4
  %69 = getelementptr inbounds %struct.ata_port_operations, ptr %68, i32 0, i32 57
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %53, align 4
  %72 = tail call i32 %70(ptr noundef %0, i32 noundef %71, i32 noundef 4) #10
  %73 = icmp eq i32 %72, -16
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  tail call void @msleep(i32 noundef 1) #10
  %75 = load ptr, ptr %48, align 4
  %76 = getelementptr inbounds %struct.ata_port_operations, ptr %75, i32 0, i32 57
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %53, align 4
  %79 = tail call i32 %77(ptr noundef %0, i32 noundef %78, i32 noundef 4) #10
  %80 = icmp eq i32 %79, -16
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  tail call void @msleep(i32 noundef 1) #10
  %82 = load ptr, ptr %48, align 4
  %83 = getelementptr inbounds %struct.ata_port_operations, ptr %82, i32 0, i32 57
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %53, align 4
  %86 = tail call i32 %84(ptr noundef %0, i32 noundef %85, i32 noundef 4) #10
  %87 = icmp eq i32 %86, -16
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  tail call void @msleep(i32 noundef 1) #10
  br label %89

89:                                               ; preds = %88, %81, %74, %67, %60, %49
  %90 = tail call ptr @ata_link_next(ptr noundef nonnull %50, ptr noundef %0, i32 noundef 0) #10
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %49

92:                                               ; preds = %89, %44, %39
  %93 = load i32, ptr %40, align 4
  %94 = and i32 %93, 4194304
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #10
  %98 = icmp eq ptr %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %117, %96
  %100 = phi ptr [ %118, %117 ], [ %97, %96 ]
  %101 = load ptr, ptr %100, align 64
  %102 = getelementptr inbounds %struct.ata_port, ptr %101, i32 0, i32 48
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ata_link, ptr %100, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr %struct.ahci_port_priv, ptr %103, i32 0, i32 13, i32 %105
  %107 = getelementptr %struct.ahci_port_priv, ptr %103, i32 0, i32 13, i32 %105, i32 3
  store i32 0, ptr %107, align 4
  %108 = getelementptr %struct.ahci_port_priv, ptr %103, i32 0, i32 13, i32 %105, i32 2
  store i32 0, ptr %108, align 4
  %109 = getelementptr %struct.ahci_port_priv, ptr %103, i32 0, i32 13, i32 %105, i32 5
  store ptr %100, ptr %109, align 4
  %110 = getelementptr %struct.ahci_port_priv, ptr %103, i32 0, i32 13, i32 %105, i32 1
  tail call void @init_timer_key(ptr noundef %110, ptr noundef nonnull @ahci_sw_activity_blink, i32 noundef 0, ptr noundef null, ptr noundef null) #10
  %111 = load i32, ptr %106, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.ata_link, ptr %100, i32 0, i32 5
  %115 = load i32, ptr %114, align 8
  %116 = or i32 %115, 128
  store i32 %116, ptr %114, align 8
  br label %117

117:                                              ; preds = %113, %99
  %118 = tail call ptr @ata_link_next(ptr noundef nonnull %100, ptr noundef %0, i32 noundef 0) #10
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %99

120:                                              ; preds = %117, %96, %92
  %121 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = load ptr, ptr %5, align 4
  %125 = load i32, ptr %9, align 4
  %126 = getelementptr inbounds %struct.ata_host, ptr %124, i32 0, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.ahci_host_priv, ptr %127, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 256
  %131 = shl i32 %125, 7
  %132 = getelementptr i8, ptr %130, i32 %131
  %133 = load ptr, ptr %31, align 4
  br i1 %123, label %148, label %134

134:                                              ; preds = %120
  %135 = getelementptr i8, ptr %132, i32 24
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %137 = or i32 %136, 131072
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !27
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %137) #10, !srcloc !10
  tail call fastcc void @ahci_enable_fbs(ptr noundef %0) #10
  %138 = getelementptr inbounds %struct.ahci_port_priv, ptr %133, i32 0, i32 9
  %139 = load i32, ptr %138, align 4
  %140 = or i32 %139, 8388608
  store i32 %140, ptr %138, align 4
  %141 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %142 = load i32, ptr %141, align 16
  %143 = and i32 %142, 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %134
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %146 = load i32, ptr %138, align 4
  %147 = getelementptr i8, ptr %132, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %146) #10, !srcloc !10
  br label %162

148:                                              ; preds = %120
  tail call fastcc void @ahci_disable_fbs(ptr noundef %0) #10
  %149 = getelementptr i8, ptr %132, i32 24
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !29
  %151 = and i32 %150, -131073
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !30
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %151) #10, !srcloc !10
  %152 = getelementptr inbounds %struct.ahci_port_priv, ptr %133, i32 0, i32 9
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, -8388609
  store i32 %154, ptr %152, align 4
  %155 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %156 = load i32, ptr %155, align 16
  %157 = and i32 %156, 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %148
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !31
  tail call void @arm_heavy_mb() #10
  %160 = load i32, ptr %152, align 4
  %161 = getelementptr i8, ptr %132, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %160) #10, !srcloc !10
  br label %162

162:                                              ; preds = %159, %148, %145, %134
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_port_start(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !20
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 372, i32 noundef 3520) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %91, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 8, i32 noundef 3520) #10
  %18 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 14
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @devm_kfree(ptr noundef %8, ptr noundef nonnull %9) #10
  br label %91

21:                                               ; preds = %16
  %22 = tail call ptr @dev_driver_string(ptr noundef %8) #10
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %17, i32 noundef 8, ptr noundef nonnull @.str.97, ptr noundef %22, i32 noundef %24)
  br label %26

26:                                               ; preds = %21, %11
  %27 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 65536
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 524288
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ata_host, ptr %37, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ahci_host_priv, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 256
  %45 = shl i32 %39, 7
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = getelementptr i8, ptr %46, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !47
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 10
  store i8 1, ptr %52, align 4
  br label %61

53:                                               ; preds = %36
  %54 = load i32, ptr %6, align 4
  %55 = and i32 %54, 16384
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %38, align 4
  br i1 %56, label %60, label %58

58:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.98, i32 noundef %57) #11
  %59 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 10
  store i8 1, ptr %59, align 4
  br label %61

60:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.99, i32 noundef %57) #11
  br label %61

61:                                               ; preds = %60, %58, %51, %31, %26
  %62 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 10
  %63 = load i8, ptr %62, align 4, !range !8
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %64, i32 91392, i32 95232
  %66 = call ptr @dmam_alloc_attrs(ptr noundef %8, i32 noundef %65, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %91, label %68

68:                                               ; preds = %61
  %69 = select i1 %64, i32 256, i32 4096
  %70 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 1
  store ptr %66, ptr %70, align 4
  %71 = load i32, ptr %2, align 4
  %72 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 2
  store i32 %71, ptr %72, align 4
  %73 = getelementptr i8, ptr %66, i32 1024
  %74 = add i32 %71, 1024
  %75 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 5
  store ptr %73, ptr %75, align 4
  %76 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 6
  store i32 %74, ptr %76, align 4
  %77 = getelementptr i8, ptr %73, i32 %69
  %78 = add i32 %74, %69
  store i32 %78, ptr %2, align 4
  %79 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 3
  store ptr %77, ptr %79, align 4
  %80 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 4
  store i32 %78, ptr %80, align 4
  %81 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 9
  store i32 2025848959, ptr %81, align 4
  %82 = load i32, ptr %6, align 4
  %83 = and i32 %82, 1048576
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %68
  %86 = getelementptr inbounds %struct.ahci_port_priv, ptr %9, i32 0, i32 8
  store i32 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  store ptr %86, ptr %87, align 8
  br label %88

88:                                               ; preds = %85, %68
  %89 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  store ptr %9, ptr %89, align 4
  %90 = call i32 @ahci_port_resume(ptr noundef %0)
  br label %91

91:                                               ; preds = %88, %61, %20, %1
  %92 = phi i32 [ 0, %88 ], [ -12, %20 ], [ -12, %1 ], [ -12, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_port_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ahci_host_priv, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 256
  %21 = shl i32 %15, 7
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr i8, ptr %22, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !38
  %25 = and i32 %24, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #10, !srcloc !10
  %26 = tail call i32 @ata_wait_register(ptr noundef %0, ptr noundef %23, i32 noundef 16384, i32 noundef 16384, i32 noundef 10, i32 noundef 1000) #10
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %12, %1
  %30 = phi ptr [ @.str.78, %1 ], [ @.str.79, %12 ]
  %31 = phi i32 [ %10, %1 ], [ -16, %12 ]
  %32 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %33, ptr noundef nonnull %30, i32 noundef %31) #11
  br label %35

35:                                               ; preds = %29, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %36 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = shl nuw i32 1, %37
  %39 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #10, !srcloc !10
  %40 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 32
  %41 = load ptr, ptr %40, align 32
  %42 = tail call i32 @__pm_runtime_idle(ptr noundef %41, i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_led_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %15, %7 ], [ 0, %2 ]
  %9 = phi ptr [ %16, %7 ], [ %5, %2 ]
  %10 = getelementptr inbounds %struct.ata_link, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.ahci_port_priv, ptr %4, i32 0, i32 13, i32 %11, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %13)
  %15 = add i32 %14, %8
  %16 = tail call ptr @ata_link_next(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 0) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7

18:                                               ; preds = %7, %2
  %19 = phi i32 [ 0, %2 ], [ %15, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_led_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !20
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = lshr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %12, i32 8) #10, !srcloc !49
  %16 = and i32 %15, %12
  %17 = getelementptr %struct.ahci_port_priv, ptr %6, i32 0, i32 13, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %4, align 4
  br i1 %19, label %23, label %21

21:                                               ; preds = %14
  %22 = and i32 %20, -458753
  store i32 %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ %22, %21 ], [ %20, %14 ]
  %25 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 57
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %0, i32 noundef %24, i32 noundef %2) #10
  br label %30

30:                                               ; preds = %23, %9, %3
  %31 = phi i32 [ %29, %23 ], [ -22, %3 ], [ -22, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %31
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_activity_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = load ptr, ptr %0, align 64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.ahci_port_priv, ptr %6, i32 0, i32 13, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_activity_store(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.ahci_port_priv, ptr %6, i32 0, i32 13, i32 %8, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %1, 0
  %12 = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  br i1 %11, label %14, label %22

14:                                               ; preds = %2
  %15 = and i32 %13, -129
  store i32 %15, ptr %12, align 8
  %16 = and i32 %10, -524288
  %17 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %8, 8
  %20 = or i32 %16, %19
  %21 = or i32 %20, %18
  br label %33

22:                                               ; preds = %2
  %23 = or i32 %13, 128
  store i32 %23, ptr %12, align 8
  %24 = icmp eq i32 %1, 2
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = and i32 %10, -524288
  %27 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %8, 8
  %30 = or i32 %29, %26
  %31 = or i32 %30, %28
  %32 = or i32 %31, 65536
  br label %33

33:                                               ; preds = %25, %14
  %34 = phi i32 [ %32, %25 ], [ %21, %14 ]
  %35 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ata_port_operations, ptr %36, i32 0, i32 57
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %4, i32 noundef %34, i32 noundef 4) #10
  br label %40

40:                                               ; preds = %33, %22
  %41 = getelementptr %struct.ahci_port_priv, ptr %6, i32 0, i32 13, i32 %8
  store i32 %1, ptr %41, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_transmit_led_message(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %1, 8
  %11 = and i32 %10, 255
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 32
  %17 = load ptr, ptr %16, align 32
  %18 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #10
  %19 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #10
  %22 = getelementptr i8, ptr %9, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !50
  %24 = and i32 %23, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = and i32 %1, -16
  %33 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %36 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %9, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 1024) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  tail call void @arm_heavy_mb() #10
  %39 = load i32, ptr %36, align 4
  %40 = getelementptr i8, ptr %9, i32 %39
  %41 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %35) #10, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %42 = or i32 %23, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %42) #10, !srcloc !10
  br label %43

43:                                               ; preds = %31, %26
  %44 = getelementptr %struct.ahci_port_priv, ptr %15, i32 0, i32 13, i32 %11, i32 4
  store i32 %1, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %13
  %46 = phi i32 [ %2, %43 ], [ -16, %13 ]
  %47 = load ptr, ptr %19, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %21) #10
  %48 = load ptr, ptr %16, align 32
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %48, i32 noundef 5) #10
  br label %50

50:                                               ; preds = %45, %3
  %51 = phi i32 [ -22, %3 ], [ %46, %45 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_pmp_retry_softreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 256
  %14 = shl i32 %8, 7
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 524288
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %25 = load ptr, ptr %24, align 64
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %3
  %28 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23, %20
  %31 = phi i32 [ %29, %27 ], [ 15, %23 ], [ 15, %20 ]
  %32 = tail call i32 @ahci_do_softreset(ptr noundef %0, ptr noundef %1, i32 noundef %31, i32 noundef %2, ptr noundef nonnull @ahci_bad_pmp_check_ready)
  %33 = icmp eq i32 %32, -5
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %15, i32 16
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !54
  %37 = and i32 %36, 8388608
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 64
  %41 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 27
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 26
  %46 = load ptr, ptr %45, align 64
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44, %39
  %49 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %50, i32 noundef %52) #11
  br label %58

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i32 noundef %56) #11
  br label %58

58:                                               ; preds = %54, %48
  %59 = tail call i32 @ahci_do_softreset(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, ptr noundef nonnull @ahci_check_ready)
  br label %60

60:                                               ; preds = %58, %34, %30
  %61 = phi i32 [ %59, %58 ], [ -5, %34 ], [ %32, %30 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_save_initial_config(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @ahci_enable_ahci(ptr noundef %4)
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !55
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 8
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %4, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !56
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 10
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %4, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !57
  %12 = icmp ugt i32 %11, 131071
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = and i32 %11, -65536
  %15 = icmp ne i32 %14, 65536
  %16 = and i32 %11, 65024
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %15, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %13, %2
  %20 = getelementptr i8, ptr %4, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !58
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ %21, %19 ], [ 0, %13 ]
  %24 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 9
  store i32 %23, ptr %24, align 4
  %25 = icmp sgt i32 %5, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %1, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str) #11
  %31 = and i32 %5, 2147483647
  br label %32

32:                                               ; preds = %30, %26, %22
  %33 = phi i32 [ %31, %30 ], [ %5, %26 ], [ %5, %22 ]
  %34 = and i32 %33, 1073741824
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %1, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  %41 = and i32 %33, -1073741825
  br label %42

42:                                               ; preds = %40, %36, %32
  %43 = phi i32 [ %41, %40 ], [ %33, %36 ], [ %33, %32 ]
  %44 = and i32 %43, 1073741824
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, ptr %1, align 4
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2) #11
  %51 = or i32 %43, 1073741824
  br label %52

52:                                               ; preds = %50, %46, %42
  %53 = phi i32 [ %43, %42 ], [ %51, %50 ], [ %43, %46 ]
  %54 = and i32 %53, 131072
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %1, align 4
  %58 = and i32 %57, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.3) #11
  %61 = and i32 %53, -131073
  br label %62

62:                                               ; preds = %60, %56, %52
  %63 = phi i32 [ %61, %60 ], [ %53, %56 ], [ %53, %52 ]
  %64 = and i32 %63, 536870912
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %1, align 4
  %68 = and i32 %67, 4096
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  %71 = and i32 %63, -536870913
  br label %72

72:                                               ; preds = %70, %66, %62
  %73 = phi i32 [ %71, %70 ], [ %63, %66 ], [ %63, %62 ]
  %74 = and i32 %23, 8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %1, align 4
  %78 = and i32 %77, 131072
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.5) #11
  %81 = and i32 %23, -25
  br label %82

82:                                               ; preds = %80, %76, %72
  %83 = phi i32 [ %81, %80 ], [ %23, %76 ], [ %23, %72 ]
  %84 = and i32 %73, 65536
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, ptr %1, align 4
  %88 = and i32 %87, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  %91 = or i32 %73, 65536
  br label %92

92:                                               ; preds = %90, %82
  %93 = phi i32 [ %73, %82 ], [ %91, %90 ]
  %94 = load i32, ptr %1, align 4
  %95 = and i32 %94, 262144
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.7) #11
  %98 = and i32 %93, -65537
  br label %99

99:                                               ; preds = %97, %92, %86
  %100 = phi i32 [ %98, %97 ], [ %93, %92 ], [ %73, %86 ]
  %101 = and i32 %100, 67108864
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, ptr %1, align 4
  %105 = and i32 %104, 8388608
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.8) #11
  %108 = or i32 %100, 67108864
  br label %109

109:                                              ; preds = %107, %103, %99
  %110 = phi i32 [ %100, %99 ], [ %108, %107 ], [ %100, %103 ]
  %111 = and i32 %110, 32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %1, align 4
  %115 = and i32 %114, 268435456
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.9) #11
  %118 = and i32 %110, -33
  br label %119

119:                                              ; preds = %117, %113, %109
  %120 = phi i32 [ %118, %117 ], [ %110, %113 ], [ %110, %109 ]
  %121 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = icmp eq i32 %8, %122
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %128, label %126

126:                                              ; preds = %119
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %8, i32 noundef %122) #11
  %127 = load i32, ptr %121, align 4
  store i32 %127, ptr %9, align 4
  br label %128

128:                                              ; preds = %126, %119
  %129 = phi i32 [ %127, %126 ], [ %8, %119 ]
  %130 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = and i32 %131, %129
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %129, i32 noundef %134) #11
  %135 = load i32, ptr %130, align 4
  %136 = and i32 %135, %129
  br label %137

137:                                              ; preds = %133, %128
  %138 = phi i32 [ %136, %133 ], [ %129, %128 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %238, label %140

140:                                              ; preds = %137
  %141 = and i32 %138, 1
  %142 = lshr i32 %138, 1
  %143 = and i32 %142, 1
  %144 = add nuw nsw i32 %143, %141
  %145 = lshr i32 %138, 2
  %146 = and i32 %145, 1
  %147 = add nuw nsw i32 %146, %144
  %148 = lshr i32 %138, 3
  %149 = and i32 %148, 1
  %150 = add nuw nsw i32 %149, %147
  %151 = lshr i32 %138, 4
  %152 = and i32 %151, 1
  %153 = add nuw nsw i32 %152, %150
  %154 = lshr i32 %138, 5
  %155 = and i32 %154, 1
  %156 = add nuw nsw i32 %155, %153
  %157 = lshr i32 %138, 6
  %158 = and i32 %157, 1
  %159 = add nuw nsw i32 %158, %156
  %160 = lshr i32 %138, 7
  %161 = and i32 %160, 1
  %162 = add nuw nsw i32 %161, %159
  %163 = lshr i32 %138, 8
  %164 = and i32 %163, 1
  %165 = add nuw nsw i32 %164, %162
  %166 = lshr i32 %138, 9
  %167 = and i32 %166, 1
  %168 = add nuw nsw i32 %167, %165
  %169 = lshr i32 %138, 10
  %170 = and i32 %169, 1
  %171 = add nuw nsw i32 %170, %168
  %172 = lshr i32 %138, 11
  %173 = and i32 %172, 1
  %174 = add nuw nsw i32 %173, %171
  %175 = lshr i32 %138, 12
  %176 = and i32 %175, 1
  %177 = add nuw nsw i32 %176, %174
  %178 = lshr i32 %138, 13
  %179 = and i32 %178, 1
  %180 = add nuw nsw i32 %179, %177
  %181 = lshr i32 %138, 14
  %182 = and i32 %181, 1
  %183 = add nuw nsw i32 %182, %180
  %184 = lshr i32 %138, 15
  %185 = and i32 %184, 1
  %186 = add nuw nsw i32 %185, %183
  %187 = lshr i32 %138, 16
  %188 = and i32 %187, 1
  %189 = add nuw nsw i32 %188, %186
  %190 = lshr i32 %138, 17
  %191 = and i32 %190, 1
  %192 = add nuw nsw i32 %191, %189
  %193 = lshr i32 %138, 18
  %194 = and i32 %193, 1
  %195 = add nuw nsw i32 %194, %192
  %196 = lshr i32 %138, 19
  %197 = and i32 %196, 1
  %198 = add nuw nsw i32 %197, %195
  %199 = lshr i32 %138, 20
  %200 = and i32 %199, 1
  %201 = add nuw nsw i32 %200, %198
  %202 = lshr i32 %138, 21
  %203 = and i32 %202, 1
  %204 = add nuw nsw i32 %203, %201
  %205 = lshr i32 %138, 22
  %206 = and i32 %205, 1
  %207 = add nuw nsw i32 %206, %204
  %208 = lshr i32 %138, 23
  %209 = and i32 %208, 1
  %210 = add nuw nsw i32 %209, %207
  %211 = lshr i32 %138, 24
  %212 = and i32 %211, 1
  %213 = add nuw nsw i32 %212, %210
  %214 = lshr i32 %138, 25
  %215 = and i32 %214, 1
  %216 = add nuw nsw i32 %215, %213
  %217 = lshr i32 %138, 26
  %218 = and i32 %217, 1
  %219 = add nuw nsw i32 %218, %216
  %220 = lshr i32 %138, 27
  %221 = and i32 %220, 1
  %222 = add nuw nsw i32 %221, %219
  %223 = lshr i32 %138, 28
  %224 = and i32 %223, 1
  %225 = add nuw nsw i32 %224, %222
  %226 = lshr i32 %138, 29
  %227 = and i32 %226, 1
  %228 = add nuw nsw i32 %227, %225
  %229 = lshr i32 %138, 30
  %230 = and i32 %229, 1
  %231 = add nuw nsw i32 %230, %228
  %232 = lshr i32 %138, 31
  %233 = add nuw nsw i32 %232, %231
  %234 = and i32 %120, 31
  %235 = add nuw nsw i32 %234, 1
  %236 = icmp ugt i32 %233, %235
  br i1 %236, label %237, label %244

237:                                              ; preds = %140
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %138, i32 noundef %235) #11
  br label %238

238:                                              ; preds = %237, %137
  %239 = icmp ult i32 %11, 66304
  br i1 %239, label %240, label %244

240:                                              ; preds = %238
  %241 = and i32 %120, 31
  %242 = shl i32 -2, %241
  %243 = xor i32 %242, -1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %243) #11
  store i32 %243, ptr %9, align 4
  br label %244

244:                                              ; preds = %240, %238, %140
  %245 = phi i32 [ %243, %240 ], [ 0, %238 ], [ %138, %140 ]
  %246 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 4
  store i32 %120, ptr %246, align 4
  %247 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 5
  store i32 %83, ptr %247, align 4
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !59
  %249 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 6
  store i32 %248, ptr %249, align 4
  %250 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 7
  store i32 %245, ptr %250, align 4
  %251 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 25
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %244
  store ptr @ahci_start_engine, ptr %251, align 4
  br label %255

255:                                              ; preds = %254, %244
  %256 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 26
  %257 = load ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %260

259:                                              ; preds = %255
  store ptr @ahci_stop_engine, ptr %256, align 4
  br label %260

260:                                              ; preds = %259, %255
  %261 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 27
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %260
  store ptr @ahci_single_level_irq_intr, ptr %261, align 4
  br label %265

265:                                              ; preds = %264, %260
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_enable_ahci(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !60
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = or i32 %3, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %6) #10, !srcloc !10
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !62
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  tail call void @msleep(i32 noundef 10) #10
  %10 = or i32 %7, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %10) #10, !srcloc !10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !62
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  tail call void @msleep(i32 noundef 10) #10
  %14 = or i32 %11, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %14) #10, !srcloc !10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !62
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  tail call void @msleep(i32 noundef 10) #10
  %18 = or i32 %15, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %18) #10, !srcloc !10
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !62
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  tail call void @msleep(i32 noundef 10) #10
  %22 = or i32 %19, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %22) #10, !srcloc !10
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !62
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @msleep(i32 noundef 10) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 229, i32 noundef 9, ptr noundef null) #10
  br label %26

26:                                               ; preds = %25, %21, %17, %13, %9, %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_start_engine(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = shl i32 %5, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !63
  %15 = or i32 %14, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !64
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #10, !srcloc !10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_stop_engine(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = shl i32 %5, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = load i32, ptr %7, align 4
  %14 = and i32 %13, 4194304
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %22 = tail call i32 @ahci_set_lpm(ptr noundef %21, i32 noundef 1, i32 noundef 4)
  br label %23

23:                                               ; preds = %20, %16, %1
  %24 = getelementptr i8, ptr %12, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !66
  %26 = and i32 %25, 32769
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = icmp eq i32 %25, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.ata_host, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.15) #11
  br label %40

34:                                               ; preds = %28
  %35 = and i32 %25, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !67
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %35) #10, !srcloc !10
  %36 = tail call i32 @ata_wait_register(ptr noundef %0, ptr noundef %24, i32 noundef 32768, i32 noundef 32768, i32 noundef 1, i32 noundef 500) #10
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 -5
  br label %40

40:                                               ; preds = %34, %30, %23
  %41 = phi i32 [ -19, %30 ], [ 0, %23 ], [ %39, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_single_level_irq_intr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !68
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %8
  tail call void @_raw_spin_lock(ptr noundef %1) #10
  %14 = tail call i32 @ahci_handle_port_intr(ptr noundef %1, i32 noundef %13)
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #10, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !70
  %15 = load i16, ptr %1, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !71
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !72
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %17 = icmp ne i32 %14, 0
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %10, %2
  %20 = phi i32 [ %18, %10 ], [ 0, %2 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_start_fis_rx(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = shl i32 %5, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !74
  tail call void @arm_heavy_mb() #10
  %19 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #10, !srcloc !10
  br label %20

20:                                               ; preds = %18, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %21 = getelementptr inbounds %struct.ahci_port_priv, ptr %14, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %22) #10, !srcloc !10
  %23 = load i32, ptr %15, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !76
  tail call void @arm_heavy_mb() #10
  %26 = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #10, !srcloc !10
  br label %27

27:                                               ; preds = %25, %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !77
  tail call void @arm_heavy_mb() #10
  %28 = getelementptr inbounds %struct.ahci_port_priv, ptr %14, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %29) #10, !srcloc !10
  %31 = getelementptr i8, ptr %12, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !78
  %33 = or i32 %32, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !79
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %33) #10, !srcloc !10
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_reset_controller(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @ahci_enable_ahci(ptr noundef %5)
  %6 = load i32, ptr @ahci_skip_host_reset, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %5, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !81
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !82
  tail call void @arm_heavy_mb() #10
  %14 = or i32 %10, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %14) #10, !srcloc !10
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !83
  br label %16

16:                                               ; preds = %13, %8
  %17 = tail call i32 @ata_wait_register(ptr noundef null, ptr noundef %9, i32 noundef 1, i32 noundef 1, i32 noundef 10, i32 noundef 1000) #10
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.16, i32 noundef %17) #11
  br label %47

23:                                               ; preds = %16
  tail call fastcc void @ahci_enable_ahci(ptr noundef %5)
  %24 = load i32, ptr %3, align 4
  %25 = and i32 %24, 16777216
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 4
  %29 = getelementptr inbounds %struct.ahci_host_priv, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !84
  tail call void @arm_heavy_mb() #10
  %31 = getelementptr inbounds %struct.ahci_host_priv, ptr %28, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %32) #10, !srcloc !10
  %33 = getelementptr inbounds %struct.ahci_host_priv, ptr %28, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %37 = load i32, ptr %33, align 4
  %38 = getelementptr i8, ptr %30, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #10, !srcloc !10
  br label %39

39:                                               ; preds = %36, %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %40 = getelementptr inbounds %struct.ahci_host_priv, ptr %28, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %41) #10, !srcloc !10
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !87
  br label %47

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.17) #11
  br label %47

47:                                               ; preds = %44, %39, %23, %20
  %48 = phi i32 [ -5, %20 ], [ 0, %23 ], [ 0, %39 ], [ 0, %44 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_reset_em(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !88
  %8 = and i32 %7, 768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %11 = or i32 %7, 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %11) #10, !srcloc !10
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ 0, %10 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_init_controller(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %11 = getelementptr i8, ptr %5, i32 8
  br label %12

12:                                               ; preds = %76, %9
  %13 = phi i32 [ 0, %9 ], [ %77, %76 ]
  %14 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 31
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ahci_host_priv, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 256
  %25 = shl i32 %19, 7
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @ata_dummy_port_ops
  br i1 %29, label %76, label %30

30:                                               ; preds = %12
  %31 = load ptr, ptr %10, align 4
  %32 = getelementptr inbounds %struct.ahci_host_priv, ptr %21, i32 0, i32 26
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %15) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load ptr, ptr %16, align 4
  %38 = load i32, ptr %18, align 4
  %39 = getelementptr inbounds %struct.ata_host, ptr %37, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ahci_host_priv, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = shl i32 %38, 7
  %44 = getelementptr i8, ptr %42, i32 280
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !38
  %47 = and i32 %46, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !39
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #10, !srcloc !10
  %48 = tail call i32 @ata_wait_register(ptr noundef %15, ptr noundef %45, i32 noundef 16384, i32 noundef 16384, i32 noundef 10, i32 noundef 1000) #10
  %49 = and i32 %48, 16384
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %36, %30
  %52 = phi ptr [ @.str.78, %30 ], [ @.str.79, %36 ]
  %53 = phi i32 [ %34, %30 ], [ -16, %36 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.77, ptr noundef nonnull %52, i32 noundef %53) #11
  br label %54

54:                                               ; preds = %51, %36
  %55 = getelementptr i8, ptr %26, i32 48
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !90
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !91
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %56) #10, !srcloc !10
  %57 = getelementptr i8, ptr %26, i32 16
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !92
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !93
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %58) #10, !srcloc !10
  br label %61

61:                                               ; preds = %60, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !94
  tail call void @arm_heavy_mb() #10
  %62 = shl nuw i32 1, %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %62) #10, !srcloc !10
  %63 = getelementptr i8, ptr %26, i32 24
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !95
  %65 = and i32 %64, 2097152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ahci_host_priv, ptr %21, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 4
  %74 = load i32, ptr %73, align 16
  %75 = or i32 %74, 4194304
  store i32 %75, ptr %73, align 16
  br label %76

76:                                               ; preds = %72, %67, %61, %12
  %77 = add nuw i32 %13, 1
  %78 = load i32, ptr %6, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %12, label %80

80:                                               ; preds = %76, %1
  %81 = getelementptr i8, ptr %5, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !96
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !97
  tail call void @arm_heavy_mb() #10
  %83 = or i32 %82, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %83) #10, !srcloc !10
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_dev_classify(ptr noundef %0) #0 {
  %2 = alloca %struct.ata_taskfile, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = shl i32 %6, 7
  %13 = getelementptr i8, ptr %11, i32 %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !20
  %14 = getelementptr i8, ptr %13, i32 36
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !99
  %16 = lshr i32 %15, 24
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 12
  store i8 %17, ptr %18, align 1
  %19 = lshr i32 %15, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 11
  store i8 %20, ptr %21, align 2
  %22 = lshr i32 %15, 8
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 10
  store i8 %23, ptr %24, align 1
  %25 = trunc i32 %15 to i8
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 9
  store i8 %25, ptr %26, align 4
  %27 = call i32 @ata_port_classify(ptr noundef %0, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_classify(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ahci_fill_cmd_slot(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.ahci_port_priv, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %1, 2816
  %7 = add i32 %5, %6
  %8 = getelementptr inbounds %struct.ahci_port_priv, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.ahci_cmd_hdr, ptr %9, i32 %1
  store i32 %2, ptr %10, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.ahci_cmd_hdr, ptr %11, i32 %1, i32 1
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr %struct.ahci_cmd_hdr, ptr %13, i32 %1, i32 2
  store i32 %7, ptr %14, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr %struct.ahci_cmd_hdr, ptr %15, i32 %1, i32 3
  store i32 0, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_kick_engine(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  %11 = shl i32 %5, 7
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = getelementptr i8, ptr %12, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !100
  %15 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %1
  %20 = and i32 %14, 136
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22, %19
  %27 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16777216
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %12, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !101
  %34 = or i32 %33, 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !102
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #10, !srcloc !10
  %35 = tail call i32 @ata_wait_register(ptr noundef %0, ptr noundef %32, i32 noundef 8, i32 noundef 8, i32 noundef 1, i32 noundef 500) #10
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 0, i32 -5
  br label %39

39:                                               ; preds = %31, %26, %22, %1
  %40 = phi i32 [ %17, %1 ], [ 0, %22 ], [ -95, %26 ], [ %38, %31 ]
  %41 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 25
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %0) #10
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_do_softreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.ata_taskfile, align 4
  %7 = alloca %struct.ata_taskfile, align 4
  %8 = load ptr, ptr %0, align 64
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 48
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  %15 = tail call i32 @ahci_kick_engine(ptr noundef %8)
  switch i32 %15, label %16 [
    i32 -95, label %35
    i32 0, label %35
  ]

16:                                               ; preds = %5
  %17 = load ptr, ptr %0, align 64
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 27
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 26
  %23 = load ptr, ptr %22, align 64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %27, i32 noundef %29, i32 noundef %15) #11
  br label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %33, i32 noundef %15) #11
  br label %35

35:                                               ; preds = %31, %25, %5, %5
  %36 = load ptr, ptr %0, align 64
  %37 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 25
  %38 = icmp eq ptr %37, %0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 26
  %41 = load ptr, ptr %40, align 64
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ahci_port_priv, ptr %14, i32 0, i32 11
  %45 = load i8, ptr %44, align 1, !range !8
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call fastcc void @ahci_disable_fbs(ptr noundef %8)
  br label %48

48:                                               ; preds = %47, %43, %39, %35
  %49 = phi i1 [ false, %39 ], [ true, %47 ], [ false, %43 ], [ false, %35 ]
  %50 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false) #10
  %51 = load ptr, ptr %50, align 64
  %52 = load ptr, ptr %51, align 64
  %53 = getelementptr inbounds %struct.ata_port, ptr %52, i32 0, i32 9
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 2
  %56 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i8 -96, i8 -80
  %60 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 13
  store i8 %59, ptr %60, align 4
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = sub i32 %61, %3
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %48
  %65 = sub i32 %3, %61
  %66 = tail call i32 @jiffies_to_msecs(i32 noundef %65) #10
  br label %67

67:                                               ; preds = %64, %48
  %68 = phi i32 [ %66, %64 ], [ 0, %48 ]
  %69 = or i8 %54, 4
  store i8 %69, ptr %55, align 1
  %70 = call fastcc i32 @ahci_exec_polled_cmd(ptr noundef %8, i32 noundef %2, ptr noundef nonnull %7, i16 noundef zeroext 1280, i32 noundef %68)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %128

72:                                               ; preds = %67
  call void @ata_msleep(ptr noundef %8, i32 noundef 1) #10
  %73 = load i8, ptr %55, align 1
  %74 = and i8 %73, -5
  store i8 %74, ptr %55, align 1
  %75 = call fastcc i32 @ahci_exec_polled_cmd(ptr noundef %8, i32 noundef %2, ptr noundef nonnull %7, i16 noundef zeroext 0, i32 noundef 0)
  %76 = call i32 @ata_wait_after_reset(ptr noundef %0, i32 noundef %3, ptr noundef %4) #10
  switch i32 %76, label %128 [
    i32 -16, label %77
    i32 0, label %100
  ]

77:                                               ; preds = %72
  %78 = load i32, ptr %12, align 4
  %79 = and i32 %78, 2048
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %128, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %0, align 64
  %83 = getelementptr inbounds %struct.ata_port, ptr %82, i32 0, i32 27
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ata_port, ptr %82, i32 0, i32 26
  %88 = load ptr, ptr %87, align 64
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %86, %81
  %91 = getelementptr inbounds %struct.ata_port, ptr %82, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %92, i32 noundef %94) #11
  br label %125

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.ata_port, ptr %82, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %98) #11
  br label %125

100:                                              ; preds = %72
  %101 = load ptr, ptr %9, align 4
  %102 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 7
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ata_host, ptr %101, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.ahci_host_priv, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 256
  %109 = shl i32 %103, 7
  %110 = getelementptr i8, ptr %108, i32 %109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false) #10, !annotation !20
  %111 = getelementptr i8, ptr %110, i32 36
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #10, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !99
  %113 = lshr i32 %112, 24
  %114 = trunc i32 %113 to i8
  %115 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 12
  store i8 %114, ptr %115, align 1
  %116 = lshr i32 %112, 16
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 11
  store i8 %117, ptr %118, align 2
  %119 = lshr i32 %112, 8
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 10
  store i8 %120, ptr %121, align 1
  %122 = trunc i32 %112 to i8
  %123 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 9
  store i8 %122, ptr %123, align 4
  %124 = call i32 @ata_port_classify(ptr noundef %8, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br label %125

125:                                              ; preds = %100, %96, %90
  %126 = phi i32 [ %124, %100 ], [ 11, %96 ], [ 11, %90 ]
  store i32 %126, ptr %1, align 4
  br i1 %49, label %127, label %149

127:                                              ; preds = %125
  call fastcc void @ahci_enable_fbs(ptr noundef %8)
  br label %149

128:                                              ; preds = %77, %72, %67
  %129 = phi i32 [ -5, %67 ], [ %76, %72 ], [ -16, %77 ]
  %130 = phi ptr [ @.str.20, %67 ], [ @.str.23, %72 ], [ @.str.23, %77 ]
  %131 = load ptr, ptr %0, align 64
  %132 = getelementptr inbounds %struct.ata_port, ptr %131, i32 0, i32 27
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.ata_port, ptr %131, i32 0, i32 26
  %137 = load ptr, ptr %136, align 64
  %138 = icmp eq ptr %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %135, %128
  %140 = getelementptr inbounds %struct.ata_port, ptr %131, i32 0, i32 5
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %143 = load i32, ptr %142, align 4
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %141, i32 noundef %143, ptr noundef nonnull %130) #11
  br label %149

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.ata_port, ptr %131, i32 0, i32 5
  %147 = load i32, ptr %146, align 4
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %147, ptr noundef nonnull %130) #11
  br label %149

149:                                              ; preds = %145, %139, %127, %125
  %150 = phi i32 [ 0, %127 ], [ 0, %125 ], [ %129, %145 ], [ %129, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  ret i32 %150
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_disable_fbs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 256
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 7
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !103
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 11
  store i8 0, ptr %24, align 1
  br label %44

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !104
  tail call void @arm_heavy_mb() #10
  %31 = and i32 %20, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %31) #10, !srcloc !10
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !105
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.ata_host, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  br i1 %34, label %39, label %38

38:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.94) #11
  br label %41

39:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.95) #11
  %40 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 11
  store i8 0, ptr %40, align 1
  br label %41

41:                                               ; preds = %39, %38
  %42 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 25
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0) #10
  br label %44

44:                                               ; preds = %41, %25, %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ahci_exec_polled_cmd(ptr noundef %0, i32 noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ahci_host_priv, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 256
  %17 = shl i32 %11, 7
  %18 = getelementptr i8, ptr %16, i32 %17
  %19 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = trunc i32 %1 to i8
  tail call void @ata_tf_to_fis(ptr noundef %2, i8 noundef zeroext %21, i32 noundef 0, ptr noundef %20) #10
  %22 = or i16 %3, 5
  %23 = zext i16 %22 to i32
  %24 = shl i32 %1, 12
  %25 = or i32 %24, %23
  %26 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  store i32 %25, ptr %29, align 4
  %30 = load ptr, ptr %28, align 4
  %31 = getelementptr %struct.ahci_cmd_hdr, ptr %30, i32 0, i32 1
  store i32 0, ptr %31, align 4
  %32 = load ptr, ptr %28, align 4
  %33 = getelementptr %struct.ahci_cmd_hdr, ptr %32, i32 0, i32 2
  store i32 %27, ptr %33, align 4
  %34 = load ptr, ptr %28, align 4
  %35 = getelementptr %struct.ahci_cmd_hdr, ptr %34, i32 0, i32 3
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 11
  %37 = load i8, ptr %36, align 1, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %5
  %40 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %18, i32 64
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !106
  %46 = and i32 %45, -3843
  %47 = shl i32 %1, 8
  %48 = or i32 %46, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !107
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %48) #10, !srcloc !10
  store i32 %1, ptr %40, align 4
  br label %49

49:                                               ; preds = %43, %39, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !108
  tail call void @arm_heavy_mb() #10
  %50 = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 1) #10, !srcloc !10
  %51 = icmp eq i32 %4, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = tail call i32 @ata_wait_register(ptr noundef %0, ptr noundef %50, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %4) #10
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @ahci_kick_engine(ptr noundef %0)
  br label %60

58:                                               ; preds = %49
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !109
  br label %60

60:                                               ; preds = %58, %56, %52
  %61 = phi i32 [ -16, %56 ], [ 0, %52 ], [ 0, %58 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_after_reset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_enable_fbs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 10
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 256
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 7
  %18 = getelementptr i8, ptr %14, i32 %17
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !110
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 11
  store i8 1, ptr %24, align 1
  %25 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 12
  store i32 -1, ptr %25, align 4
  br label %46

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !111
  tail call void @arm_heavy_mb() #10
  %32 = or i32 %20, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %32) #10, !srcloc !10
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !112
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.ata_host, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  br i1 %35, label %42, label %39

39:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.92) #11
  %40 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 11
  store i8 1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.ahci_port_priv, ptr %7, i32 0, i32 12
  store i32 -1, ptr %41, align 4
  br label %43

42:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.93) #11
  br label %43

43:                                               ; preds = %42, %39
  %44 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 25
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %0) #10
  br label %46

46:                                               ; preds = %43, %26, %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_check_ready(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = shl i32 %6, 7
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !113
  %16 = trunc i32 %15 to i8
  %17 = icmp sgt i8 %16, -1
  %18 = icmp eq i8 %16, -1
  %19 = select i1 %18, i32 -19, i32 0
  %20 = select i1 %17, i32 1, i32 %19
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_do_hardreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.ata_taskfile, align 4
  %6 = alloca %struct.ata_taskfile, align 4
  %7 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %12 = load ptr, ptr %0, align 64
  %13 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 48
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 31
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_host, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ahci_port_priv, ptr %14, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %22 = getelementptr inbounds %struct.ahci_host_priv, ptr %18, i32 0, i32 26
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %12) #10
  %25 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false) #10
  %26 = load ptr, ptr %25, align 64
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 9
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 2
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i8 -96, i8 -80
  %35 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 13
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 14
  store i8 -128, ptr %36, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %6, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %21) #10
  %37 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @ahci_check_ready) #10
  %38 = getelementptr inbounds %struct.ahci_host_priv, ptr %18, i32 0, i32 25
  %39 = load ptr, ptr %38, align 4
  call void %39(ptr noundef %12) #10
  %40 = load i8, ptr %3, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %4
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ata_host, ptr %43, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ahci_host_priv, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 256
  %51 = shl i32 %45, 7
  %52 = getelementptr i8, ptr %50, i32 %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false) #10, !annotation !20
  %53 = getelementptr i8, ptr %52, i32 36
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #10, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !99
  %55 = lshr i32 %54, 24
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 12
  store i8 %56, ptr %57, align 1
  %58 = lshr i32 %54, 16
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 11
  store i8 %59, ptr %60, align 2
  %61 = lshr i32 %54, 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 10
  store i8 %62, ptr %63, align 1
  %64 = trunc i32 %54 to i8
  %65 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 9
  store i8 %64, ptr %65, align 4
  %66 = call i32 @ata_port_classify(ptr noundef %12, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  store i32 %66, ptr %1, align 4
  br label %67

67:                                               ; preds = %42, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_handle_port_intr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  br label %8

8:                                                ; preds = %37, %6
  %9 = phi i32 [ 0, %6 ], [ %38, %37 ]
  %10 = phi i32 [ 0, %6 ], [ %39, %37 ]
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %10
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 31
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ata_host, ptr %20, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ahci_host_priv, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 256
  %28 = shl i32 %22, 7
  %29 = getelementptr i8, ptr %27, i32 %28
  %30 = getelementptr i8, ptr %29, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !114
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !115
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %31) #10, !srcloc !10
  tail call fastcc void @ahci_handle_port_interrupt(ptr noundef nonnull %16, ptr noundef %29, i32 noundef %31) #10
  br label %37

32:                                               ; preds = %14
  %33 = tail call i32 @ata_ratelimit() #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.26, i32 noundef %10) #11
  br label %37

37:                                               ; preds = %35, %32, %18, %8
  %38 = phi i32 [ %9, %8 ], [ 1, %32 ], [ 1, %35 ], [ 1, %18 ]
  %39 = add nuw i32 %10, 1
  %40 = load i32, ptr %3, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %8, label %42

42:                                               ; preds = %37, %2
  %43 = phi i32 [ 0, %2 ], [ %38, %37 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_ratelimit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sata_pmp_error_handler(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_print_info(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %8, 20
  %14 = and i32 %13, 15
  %15 = add nsw i32 %14, -1
  %16 = icmp ult i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds [3 x ptr], ptr @switch.table.ahci_print_info, i32 0, i32 %15
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = phi ptr [ %19, %17 ], [ @.str.30, %2 ]
  %22 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = lshr i32 %6, 24
  %25 = lshr i32 %6, 16
  %26 = and i32 %25, 255
  %27 = lshr i32 %6, 8
  %28 = and i32 %27, 255
  %29 = and i32 %6, 255
  %30 = lshr i32 %8, 8
  %31 = and i32 %30, 31
  %32 = add nuw nsw i32 %31, 1
  %33 = and i32 %8, 31
  %34 = add nuw nsw i32 %33, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.31, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %29, i32 noundef %32, i32 noundef %34, ptr noundef nonnull %21, i32 noundef %12, ptr noundef %1) #11
  %35 = load ptr, ptr %22, align 4
  %36 = icmp sgt i32 %8, -1
  %37 = select i1 %36, ptr @.str.34, ptr @.str.33
  %38 = and i32 %8, 1073741824
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr @.str.34, ptr @.str.35
  %41 = and i32 %8, 536870912
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, ptr @.str.34, ptr @.str.36
  %44 = and i32 %8, 268435456
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.34, ptr @.str.37
  %47 = and i32 %8, 134217728
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.34, ptr @.str.38
  %50 = and i32 %8, 67108864
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, ptr @.str.34, ptr @.str.39
  %53 = and i32 %8, 33554432
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, ptr @.str.34, ptr @.str.40
  %56 = and i32 %8, 16777216
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr @.str.34, ptr @.str.41
  %59 = and i32 %8, 262144
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str.34, ptr @.str.42
  %62 = and i32 %8, 131072
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr @.str.34, ptr @.str.43
  %65 = and i32 %8, 65536
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr @.str.34, ptr @.str.44
  %68 = and i32 %8, 32768
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr @.str.34, ptr @.str.45
  %71 = and i32 %8, 16384
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, ptr @.str.34, ptr @.str.46
  %74 = and i32 %8, 8192
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, ptr @.str.34, ptr @.str.47
  %77 = and i32 %8, 128
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, ptr @.str.34, ptr @.str.48
  %80 = and i32 %8, 64
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, ptr @.str.34, ptr @.str.49
  %83 = and i32 %8, 32
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, ptr @.str.34, ptr @.str.50
  %86 = and i32 %10, 32
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, ptr @.str.34, ptr @.str.51
  %89 = and i32 %10, 16
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, ptr @.str.34, ptr @.str.52
  %92 = and i32 %10, 8
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %93, ptr @.str.34, ptr @.str.53
  %95 = and i32 %10, 4
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %96, ptr @.str.34, ptr @.str.54
  %98 = and i32 %10, 2
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, ptr @.str.34, ptr @.str.55
  %101 = and i32 %10, 1
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, ptr @.str.34, ptr @.str.56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.32, ptr noundef nonnull %37, ptr noundef nonnull %40, ptr noundef nonnull %43, ptr noundef nonnull %46, ptr noundef nonnull %49, ptr noundef nonnull %52, ptr noundef nonnull %55, ptr noundef nonnull %58, ptr noundef nonnull %61, ptr noundef nonnull %64, ptr noundef nonnull %67, ptr noundef nonnull %70, ptr noundef nonnull %73, ptr noundef nonnull %76, ptr noundef nonnull %79, ptr noundef nonnull %82, ptr noundef nonnull %85, ptr noundef nonnull %88, ptr noundef nonnull %91, ptr noundef nonnull %94, ptr noundef nonnull %97, ptr noundef nonnull %100, ptr noundef nonnull %103) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_set_em_messages(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !116
  %7 = getelementptr i8, ptr %4, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !117
  %9 = load i8, ptr @ahci_em_messages, align 1, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  %17 = lshr i32 %8, 16
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = lshr i32 %6, 14
  %23 = and i32 %22, 262140
  %24 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 11
  store i32 %23, ptr %24, align 4
  %25 = shl i32 %6, 2
  %26 = and i32 %25, 1020
  %27 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 12
  store i32 %26, ptr %27, align 4
  %28 = zext i8 %19 to i32
  %29 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 13
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %1, align 4
  %31 = or i32 %30, 2097152
  store i32 %31, ptr %1, align 4
  %32 = and i32 %8, 67108864
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = or i32 %30, 6291456
  store i32 %35, ptr %1, align 4
  br label %36

36:                                               ; preds = %34, %21, %16, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_host_activate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %10, @ahci_single_level_irq_intr
  %13 = or i1 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.57) #11
  br label %17

17:                                               ; preds = %14, %8
  %18 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.58) #11
  br label %66

24:                                               ; preds = %17
  %25 = load ptr, ptr %3, align 4
  %26 = tail call i32 @ata_host_start(ptr noundef %0) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ahci_host_priv, ptr %25, i32 0, i32 28
  %34 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  br label %35

35:                                               ; preds = %54, %32
  %36 = phi i32 [ 0, %32 ], [ %55, %54 ]
  %37 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ata_port, ptr %38, i32 0, i32 48
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %33, align 4
  %42 = tail call i32 %41(ptr noundef %0, i32 noundef %36) #10
  %43 = icmp eq ptr %40, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  tail call void @disable_irq(i32 noundef %42) #10
  br label %54

45:                                               ; preds = %35
  %46 = load ptr, ptr %34, align 4
  %47 = getelementptr inbounds %struct.ahci_port_priv, ptr %40, i32 0, i32 14
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %37, align 4
  %50 = tail call i32 @devm_request_threaded_irq(ptr noundef %46, i32 noundef %42, ptr noundef nonnull @ahci_multi_irqs_intr_hard, ptr noundef null, i32 noundef 0, ptr noundef %48, ptr noundef %49) #10
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %53, ptr noundef nonnull @.str.101, i32 noundef %42) #10
  br label %54

54:                                               ; preds = %52, %44
  %55 = add nuw i32 %36, 1
  %56 = load i32, ptr %29, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %35, label %58

58:                                               ; preds = %54, %28
  %59 = tail call i32 @ata_host_register(ptr noundef %0, ptr noundef %1) #10
  br label %66

60:                                               ; preds = %2
  %61 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 24
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ahci_host_priv, ptr %4, i32 0, i32 27
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @ata_host_activate(ptr noundef %0, i32 noundef %62, ptr noundef %64, i32 noundef 128, ptr noundef %1) #10
  br label %66

66:                                               ; preds = %60, %58, %45, %24, %21
  %67 = phi i32 [ -5, %21 ], [ %65, %60 ], [ %59, %58 ], [ %26, %24 ], [ %50, %45 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_show_host_caps(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_show_host_cap2(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_show_host_version(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_show_port_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ahci_host_priv, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 256
  %15 = shl i32 %9, 7
  %16 = getelementptr i8, ptr %14, i32 %15
  %17 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 32
  %18 = load ptr, ptr %17, align 32
  %19 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #10
  %20 = getelementptr i8, ptr %16, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !118
  %22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.60, i32 noundef %21)
  %23 = load ptr, ptr %17, align 32
  %24 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 5) #10
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_read_em_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 32
  %16 = load ptr, ptr %15, align 32
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #10
  %18 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #10
  %21 = getelementptr i8, ptr %11, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !119
  %23 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 2097152
  %26 = icmp ne i32 %25, 0
  %27 = and i32 %22, 33554432
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %79

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %79, label %35

35:                                               ; preds = %30
  %36 = and i32 %22, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %79, label %38

38:                                               ; preds = %35
  %39 = and i32 %22, 16777216
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 12
  %42 = load i32, ptr %41, align 4
  %43 = select i1 %40, i32 %42, i32 0
  %44 = getelementptr i8, ptr %14, i32 %43
  %45 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 12
  %46 = icmp ugt i32 %42, 4096
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.ahci_read_em_buffer) #10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %45, align 4
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %52, i32 noundef %53, i32 noundef 4096) #11
  br label %57

55:                                               ; preds = %38
  %56 = icmp eq i32 %42, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %55, %50, %47
  %58 = phi i32 [ %42, %55 ], [ 4096, %50 ], [ 4096, %47 ]
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ %77, %59 ], [ 0, %57 ]
  %61 = getelementptr i8, ptr %44, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !120
  %63 = trunc i32 %62 to i8
  %64 = getelementptr i8, ptr %2, i32 %60
  store i8 %63, ptr %64, align 1
  %65 = lshr i32 %62, 8
  %66 = trunc i32 %65 to i8
  %67 = or i32 %60, 1
  %68 = getelementptr i8, ptr %2, i32 %67
  store i8 %66, ptr %68, align 1
  %69 = lshr i32 %62, 16
  %70 = trunc i32 %69 to i8
  %71 = or i32 %60, 2
  %72 = getelementptr i8, ptr %2, i32 %71
  store i8 %70, ptr %72, align 1
  %73 = lshr i32 %62, 24
  %74 = trunc i32 %73 to i8
  %75 = or i32 %60, 3
  %76 = getelementptr i8, ptr %2, i32 %75
  store i8 %74, ptr %76, align 1
  %77 = add i32 %60, 4
  %78 = icmp ult i32 %77, %58
  br i1 %78, label %59, label %79

79:                                               ; preds = %59, %55, %35, %30, %3
  %80 = phi i32 [ -22, %30 ], [ -22, %3 ], [ -11, %35 ], [ 0, %55 ], [ %77, %59 ]
  %81 = load ptr, ptr %18, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %81, i32 noundef %20) #10
  %82 = load ptr, ptr %15, align 32
  %83 = tail call i32 @__pm_runtime_idle(ptr noundef %82, i32 noundef 5) #10
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_store_em_buffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 480
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr i8, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %78, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 8
  %24 = icmp ne i32 %23, 0
  %25 = and i32 %3, 3
  %26 = icmp eq i32 %25, 0
  %27 = and i1 %26, %24
  br i1 %27, label %28, label %78

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %30, %3
  br i1 %31, label %78, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 32
  %34 = load ptr, ptr %33, align 32
  %35 = tail call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 4) #10
  %36 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #10
  %39 = getelementptr i8, ptr %12, i32 32
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !121
  %41 = and i32 %40, 256
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %32
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %45, %43
  %46 = phi i32 [ %69, %45 ], [ 0, %43 ]
  %47 = getelementptr i8, ptr %2, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %46, 1
  %51 = getelementptr i8, ptr %2, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or i32 %54, %49
  %56 = or i32 %46, 2
  %57 = getelementptr i8, ptr %2, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = or i32 %55, %60
  %62 = or i32 %46, 3
  %63 = getelementptr i8, ptr %2, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 %65, 24
  %67 = or i32 %61, %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %68 = getelementptr i8, ptr %15, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #10, !srcloc !10
  %69 = add i32 %46, 4
  %70 = icmp ult i32 %69, %3
  br i1 %70, label %45, label %71

71:                                               ; preds = %45, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %72 = or i32 %40, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %72) #10, !srcloc !10
  br label %73

73:                                               ; preds = %71, %32
  %74 = phi i32 [ %3, %71 ], [ -16, %32 ]
  %75 = load ptr, ptr %36, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %38) #10
  %76 = load ptr, ptr %33, align 32
  %77 = tail call i32 @__pm_runtime_idle(ptr noundef %76, i32 noundef 5) #10
  br label %78

78:                                               ; preds = %73, %28, %20, %4
  %79 = phi i32 [ -22, %28 ], [ -22, %20 ], [ -22, %4 ], [ %74, %73 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_show_em_supported(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 32
  %13 = load ptr, ptr %12, align 32
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #10
  %15 = getelementptr i8, ptr %11, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !124
  %17 = load ptr, ptr %12, align 32
  %18 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 5) #10
  %19 = and i32 %16, 65536
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.34, ptr @.str.40
  %22 = and i32 %16, 131072
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @.str.34, ptr @.str.68
  %25 = and i32 %16, 262144
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.34, ptr @.str.69
  %28 = and i32 %16, 524288
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.34, ptr @.str.70
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.67, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef nonnull %27, ptr noundef nonnull %30)
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_scr_lpm(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_set_aggressive_devslp(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = shl i32 %8, 7
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14
  %15 = getelementptr i8, ptr %13, i32 68
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !125
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.ata_host, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.72) #11
  br label %101

23:                                               ; preds = %2
  br i1 %1, label %42, label %24

24:                                               ; preds = %23
  %25 = and i32 %16, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %101, label %27

27:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !126
  tail call void @arm_heavy_mb() #10
  %28 = and i32 %16, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %28) #10, !srcloc !10
  %29 = tail call i32 @ata_dev_set_feature(ptr noundef %14, i8 noundef zeroext -112, i8 noundef zeroext 9) #10
  %30 = icmp ugt i32 %29, 1
  br i1 %30, label %31, label %101

31:                                               ; preds = %27
  %32 = load ptr, ptr %14, align 64
  %33 = load ptr, ptr %32, align 64
  %34 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.ata_link, ptr %32, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %35, i32 noundef %40) #11
  br label %101

42:                                               ; preds = %23
  %43 = lshr i32 %16, 25
  %44 = and i32 %43, 15
  %45 = load i32, ptr @devslp_idle_timeout, align 4
  %46 = add nuw nsw i32 %44, 1
  %47 = udiv i32 %45, %46
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 1023)
  %49 = and i32 %16, 1
  %50 = icmp ne i32 %49, 0
  %51 = lshr i32 %16, 15
  %52 = and i32 %51, 1023
  %53 = icmp eq i32 %52, %48
  %54 = select i1 %50, i1 %53, i1 false
  br i1 %54, label %101, label %55

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 26
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %0) #10
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %55
  %61 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 26, i32 7
  %62 = load i8, ptr %61, align 1
  %63 = icmp sgt i8 %62, -1
  br i1 %63, label %79, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 26
  %66 = load i8, ptr %65, align 64
  %67 = and i8 %66, 31
  %68 = zext i8 %67 to i32
  %69 = icmp eq i8 %67, 0
  %70 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 26, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i8 %71, 0
  %74 = shl nuw nsw i32 %68, 10
  %75 = select i1 %69, i32 10240, i32 %74
  %76 = shl nuw nsw i32 %72, 2
  %77 = select i1 %73, i32 80, i32 %76
  %78 = or i32 %77, %75
  br label %79

79:                                               ; preds = %64, %60
  %80 = phi i32 [ %78, %64 ], [ 10320, %60 ]
  %81 = and i32 %16, -33554430
  %82 = shl nuw nsw i32 %48, 15
  %83 = or i32 %81, %82
  %84 = or i32 %83, 1
  %85 = or i32 %80, %84
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !127
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %85) #10, !srcloc !10
  %86 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 25
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %0) #10
  %88 = tail call i32 @ata_dev_set_feature(ptr noundef %14, i8 noundef zeroext 16, i8 noundef zeroext 9) #10
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %90, label %101

90:                                               ; preds = %79
  %91 = load ptr, ptr %14, align 64
  %92 = load ptr, ptr %91, align 64
  %93 = getelementptr inbounds %struct.ata_port, ptr %92, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ata_link, ptr %91, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %96
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %94, i32 noundef %99) #11
  br label %101

101:                                              ; preds = %90, %79, %55, %42, %31, %27, %24, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_dev_set_feature(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_bad_pmp_check_ready(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = shl i32 %6, 7
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 32
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !128
  %16 = getelementptr i8, ptr %13, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !129
  %18 = and i32 %17, 8388608
  %19 = icmp eq i32 %18, 0
  %20 = trunc i32 %15 to i8
  %21 = icmp sgt i8 %20, -1
  %22 = icmp eq i8 %20, -1
  %23 = select i1 %22, i32 -19, i32 0
  %24 = select i1 %21, i32 1, i32 %23
  %25 = select i1 %19, i32 %24, i32 -5
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_postreset(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_pmp_qc_defer_cmd_switch(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_handle_port_interrupt(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 16
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !130

15:                                               ; preds = %3
  %16 = and i32 %2, -8388609
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ %16, %15 ], [ %2, %3 ]
  %19 = tail call zeroext i1 @sata_lpm_ignore_phy_events(ptr noundef %4) #10
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = and i32 %18, -4194305
  %22 = load ptr, ptr %4, align 64
  %23 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 31
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_host, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ahci_host_priv, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 256
  %32 = shl i32 %26, 7
  %33 = getelementptr i8, ptr %31, i32 %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %34 = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 65536) #10, !srcloc !10
  br label %35

35:                                               ; preds = %20, %17
  %36 = phi i32 [ %21, %20 ], [ %18, %17 ]
  %37 = and i32 %36, 2025848912
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !130

39:                                               ; preds = %35
  tail call fastcc void @ahci_error_intr(ptr noundef %0, i32 noundef %36)
  br label %106

40:                                               ; preds = %35
  %41 = and i32 %36, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ahci_host_priv, ptr %10, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 536870912
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call i32 @sata_async_notification(ptr noundef %0) #10
  br label %66

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.ahci_port_priv, ptr %6, i32 0, i32 11
  %52 = load i8, ptr %51, align 1, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i1, ptr @ahci_handle_port_interrupt.__already_done, align 1
  br i1 %55, label %66, label %56, !prof !130

56:                                               ; preds = %54
  store i1 true, ptr @ahci_handle_port_interrupt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 1859, i32 noundef 9, ptr noundef null) #10
  br label %66

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ahci_port_priv, ptr %6, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr i8, ptr %59, i32 88
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 32768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = tail call i32 @sata_async_notification(ptr noundef %0) #10
  br label %66

66:                                               ; preds = %64, %57, %56, %54, %48, %40
  %67 = getelementptr inbounds %struct.ahci_port_priv, ptr %6, i32 0, i32 11
  %68 = load i8, ptr %67, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 21
  %71 = load i64, ptr %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %69, label %80, label %73

73:                                               ; preds = %66
  br i1 %72, label %92, label %74

74:                                               ; preds = %73
  %75 = getelementptr i8, ptr %1, i32 52
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !131
  %77 = getelementptr i8, ptr %1, i32 56
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !132
  %79 = or i32 %78, %76
  br label %92

80:                                               ; preds = %66
  br i1 %72, label %89, label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %6, align 4
  %83 = getelementptr inbounds %struct.ata_link, ptr %82, i32 0, i32 4
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = getelementptr i8, ptr %1, i32 52
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !133
  br label %92

89:                                               ; preds = %81, %80
  %90 = getelementptr i8, ptr %1, i32 56
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !134
  br label %92

92:                                               ; preds = %89, %86, %74, %73
  %93 = phi i32 [ %79, %74 ], [ 0, %73 ], [ %88, %86 ], [ %91, %89 ]
  %94 = zext i32 %93 to i64
  %95 = tail call i32 @ata_qc_complete_multiple(ptr noundef %0, i64 noundef %94) #10
  %96 = icmp slt i32 %95, 0
  %97 = select i1 %96, i1 %14, i1 false
  br i1 %97, label %98, label %106, !prof !135

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = or i32 %100, 2
  store i32 %101, ptr %99, align 4
  %102 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = or i32 %103, 6
  store i32 %104, ptr %102, align 4
  %105 = tail call i32 @ata_port_freeze(ptr noundef %0) #10
  br label %106

106:                                              ; preds = %98, %92, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sata_lpm_ignore_phy_events(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ahci_error_intr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 48
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11
  %11 = getelementptr inbounds %struct.ahci_port_priv, ptr %8, i32 0, i32 11
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ahci_host_priv, ptr %6, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 256
  %20 = shl i32 %16, 7
  %21 = getelementptr i8, ptr %19, i32 %20
  %22 = getelementptr i8, ptr %21, i32 64
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !136
  %24 = lshr i32 %23, 16
  %25 = and i32 %23, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 28
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr %struct.ata_link, ptr %33, i32 %24
  br label %50

35:                                               ; preds = %2
  %36 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %47, %35
  %39 = phi ptr [ %48, %47 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 32
  %42 = icmp ult i32 %41, 33
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = tail call ptr @ata_link_next(ptr noundef nonnull %39, ptr noundef %0, i32 noundef 0) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %38

50:                                               ; preds = %47, %43, %38, %35, %31, %27, %14
  %51 = phi i1 [ true, %31 ], [ false, %27 ], [ false, %14 ], [ false, %35 ], [ false, %38 ], [ false, %47 ], [ false, %43 ]
  %52 = phi ptr [ %34, %31 ], [ null, %27 ], [ null, %14 ], [ null, %35 ], [ %39, %43 ], [ null, %47 ], [ %39, %38 ]
  %53 = icmp eq ptr %52, null
  %54 = select i1 %53, ptr %9, ptr %52
  %55 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 32
  %57 = icmp ugt i32 %56, 32
  %58 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %56
  %59 = icmp eq ptr %58, null
  %60 = or i1 %57, %59
  br i1 %60, label %73, label %61, !prof !135

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.ata_port_operations, ptr %63, i32 0, i32 22
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %56, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 65537
  %71 = icmp eq i32 %70, 1
  %72 = select i1 %71, ptr %58, ptr null
  br label %73

73:                                               ; preds = %67, %61, %50
  %74 = phi ptr [ %58, %61 ], [ null, %50 ], [ %72, %67 ]
  %75 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %10) #10
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %10, ptr noundef nonnull @.str.83, i32 noundef %1) #10
  %76 = load ptr, ptr %9, align 64
  %77 = getelementptr inbounds %struct.ata_port, ptr %76, i32 0, i32 31
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ata_port, ptr %76, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.ata_host, ptr %78, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ahci_host_priv, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 256
  %86 = shl i32 %80, 7
  %87 = getelementptr i8, ptr %85, i32 %86
  %88 = getelementptr i8, ptr %87, i32 48
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !24
  %90 = load ptr, ptr %9, align 64
  %91 = getelementptr inbounds %struct.ata_port, ptr %90, i32 0, i32 31
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.ata_port, ptr %90, i32 0, i32 7
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ata_host, ptr %92, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ahci_host_priv, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 256
  %100 = shl i32 %94, 7
  %101 = getelementptr i8, ptr %99, i32 %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  %102 = getelementptr i8, ptr %101, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %89) #10, !srcloc !10
  %103 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, %89
  store i32 %105, ptr %103, align 4
  %106 = load i32, ptr %6, align 4
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  %109 = and i32 %1, -134217729
  %110 = select i1 %108, i32 %1, i32 %109
  %111 = and i32 %110, 1073741824
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %73
  %114 = icmp eq ptr %74, null
  %115 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 11, i32 2
  %116 = getelementptr inbounds %struct.ata_queued_cmd, ptr %74, i32 0, i32 20
  %117 = select i1 %114, ptr %115, ptr %116
  %118 = load i32, ptr %117, align 4
  %119 = or i32 %118, 1
  store i32 %119, ptr %117, align 4
  %120 = load i32, ptr %6, align 4
  %121 = and i32 %120, 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %113
  %124 = load i32, ptr %103, align 4
  %125 = and i32 %124, -2049
  store i32 %125, ptr %103, align 4
  br label %126

126:                                              ; preds = %123, %113, %73
  %127 = and i32 %110, 16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.ahci_port_priv, ptr %8, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr i8, ptr %131, i32 96
  %133 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 11, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = or i32 %134, 2
  store i32 %135, ptr %133, align 4
  %136 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 11, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %137, 6
  store i32 %138, ptr %136, align 4
  %139 = load i32, ptr %132, align 4
  %140 = getelementptr i8, ptr %131, i32 100
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr i8, ptr %131, i32 104
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr i8, ptr %131, i32 108
  %145 = load i32, ptr %144, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %75, ptr noundef nonnull @.str.84, i32 noundef %139, i32 noundef %141, i32 noundef %143, i32 noundef %145) #10
  br label %146

146:                                              ; preds = %129, %126
  %147 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  %150 = and i32 %110, 8388608
  %151 = icmp eq i32 %150, 0
  %152 = select i1 %149, i1 true, i1 %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 11, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = or i32 %155, 2
  store i32 %156, ptr %154, align 4
  %157 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 11, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = or i32 %158, 6
  store i32 %159, ptr %157, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %75, ptr noundef nonnull @.str.85) #10
  br label %160

160:                                              ; preds = %153, %146
  %161 = and i32 %110, 805306368
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %170, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = or i32 %165, 32
  store i32 %166, ptr %164, align 4
  %167 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = or i32 %168, 6
  store i32 %169, ptr %167, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %10, ptr noundef nonnull @.str.86) #10
  br label %170

170:                                              ; preds = %163, %160
  %171 = and i32 %110, 134217728
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %170
  br i1 %51, label %174, label %176

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 11, i32 2
  br label %181

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = or i32 %178, 16
  store i32 %179, ptr %177, align 4
  %180 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 3
  br label %181

181:                                              ; preds = %176, %174
  %182 = phi ptr [ %180, %176 ], [ %175, %174 ]
  %183 = phi i32 [ 6, %176 ], [ 1, %174 ]
  %184 = load i32, ptr %182, align 4
  %185 = or i32 %184, %183
  store i32 %185, ptr %182, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %10, ptr noundef nonnull @.str.87) #10
  br label %186

186:                                              ; preds = %181, %170
  %187 = and i32 %110, 4194368
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %205, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = or i32 %191, 3
  store i32 %192, ptr %190, align 4
  %193 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 5
  %194 = load i32, ptr %193, align 4
  %195 = or i32 %194, 1
  store i32 %195, ptr %193, align 4
  %196 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = or i32 %197, 14
  store i32 %198, ptr %196, align 4
  %199 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = or i32 %200, 16
  store i32 %201, ptr %199, align 4
  %202 = and i32 %110, 64
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, ptr @.str.90, ptr @.str.89
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %10, ptr noundef nonnull @.str.88, ptr noundef nonnull %204) #10
  br label %205

205:                                              ; preds = %189, %186
  %206 = and i32 %110, 683671632
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %205
  %209 = tail call i32 @ata_port_freeze(ptr noundef %0) #10
  br label %258

210:                                              ; preds = %205
  br i1 %51, label %211, label %256

211:                                              ; preds = %210
  %212 = tail call i32 @ata_link_abort(ptr noundef %54) #10
  %213 = load ptr, ptr %7, align 4
  %214 = load ptr, ptr %3, align 4
  %215 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr inbounds %struct.ata_host, ptr %214, i32 0, i32 5
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.ahci_host_priv, ptr %218, i32 0, i32 3
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr i8, ptr %220, i32 256
  %222 = shl i32 %216, 7
  %223 = getelementptr i8, ptr %221, i32 %222
  %224 = getelementptr i8, ptr %223, i32 64
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !137
  %226 = getelementptr inbounds %struct.ahci_port_priv, ptr %213, i32 0, i32 11
  %227 = load i8, ptr %226, align 1, !range !8
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %229, label %230, !prof !135

229:                                              ; preds = %211
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libahci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1686, 0\0A.popsection", ""() #10, !srcloc !138
  unreachable

230:                                              ; preds = %211
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !139
  tail call void @arm_heavy_mb() #10
  %231 = or i32 %225, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %231) #10, !srcloc !10
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !140
  %233 = and i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %258, label %235

235:                                              ; preds = %230
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %236(i32 noundef 214748) #10
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !141
  %238 = and i32 %237, 2
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %235
  %241 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %241(i32 noundef 214748) #10
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !141
  %243 = and i32 %242, 2
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %246(i32 noundef 214748) #10
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %224) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !141
  %248 = and i32 %247, 2
  %249 = icmp eq i32 %248, 0
  br label %250

250:                                              ; preds = %245, %240, %235
  %251 = phi i1 [ %239, %235 ], [ %244, %240 ], [ %249, %245 ]
  br i1 %251, label %258, label %252

252:                                              ; preds = %250
  %253 = load ptr, ptr %3, align 4
  %254 = getelementptr inbounds %struct.ata_host, ptr %253, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.91) #11
  br label %258

256:                                              ; preds = %210
  %257 = tail call i32 @ata_port_abort(ptr noundef %0) #10
  br label %258

258:                                              ; preds = %256, %252, %250, %230, %208
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_async_notification(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_qc_complete_multiple(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_link_abort(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_from_fis(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_sw_activity_blink(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr i8, ptr %0, i32 28
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -65536
  %8 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_link, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 8
  %13 = or i32 %7, %9
  %14 = or i32 %13, %12
  %15 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #10
  %18 = getelementptr i8, ptr %0, i32 20
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %0, i32 24
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %1
  store i32 %21, ptr %18, align 4
  %24 = and i32 %14, -393217
  %25 = xor i32 %24, 65536
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = add i32 %26, 10
  %28 = tail call i32 @mod_timer(ptr noundef %0, i32 noundef %27) #10
  br label %36

29:                                               ; preds = %1
  %30 = getelementptr i8, ptr %0, i32 -4
  %31 = and i32 %14, -458753
  %32 = load i32, ptr %30, align 4
  %33 = icmp eq i32 %32, 2
  %34 = or i32 %31, 65536
  %35 = select i1 %33, i32 %34, i32 %31
  br label %36

36:                                               ; preds = %29, %23
  %37 = phi i32 [ %25, %23 ], [ %35, %29 ]
  %38 = load ptr, ptr %15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %38, i32 noundef %17) #10
  %39 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ata_port_operations, ptr %40, i32 0, i32 57
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 %42(ptr noundef %4, i32 noundef %37, i32 noundef 4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ahci_multi_irqs_intr_hard(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 256
  %12 = shl i32 %6, 7
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !142
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %15) #10, !srcloc !10
  %16 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  tail call void @_raw_spin_lock(ptr noundef %17) #10
  tail call fastcc void @ahci_handle_port_interrupt(ptr noundef %1, ptr noundef %13, i32 noundef %15)
  %18 = load ptr, ptr %16, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !70
  %19 = load i16, ptr %18, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !71
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !72
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2155239539}
!10 = !{i64 4962790}
!11 = !{i64 4963208}
!12 = !{i64 2155240042}
!13 = !{i64 2155240230}
!14 = !{i64 2155240568}
!15 = !{i64 2155242102}
!16 = !{i64 2155242593}
!17 = !{i64 2155242786}
!18 = !{i64 2155243124}
!19 = !{i64 2155243485}
!20 = !{!"auto-init"}
!21 = !{i64 2155227569}
!22 = !{i64 2155227761}
!23 = !{i64 2155228244}
!24 = !{i64 2155167920}
!25 = !{i64 2155168109}
!26 = !{i64 2155253906}
!27 = !{i64 2155254094}
!28 = !{i64 2155254429}
!29 = !{i64 2155254929}
!30 = !{i64 2155255117}
!31 = !{i64 2155255452}
!32 = !{i64 2155179523}
!33 = !{i64 2155180023}
!34 = !{i64 2155180211}
!35 = !{i64 2155180686}
!36 = !{i64 2155180874}
!37 = !{i64 2155181209}
!38 = !{i64 2155177948}
!39 = !{i64 2155178136}
!40 = !{i64 2155181721}
!41 = !{i64 2155181918}
!42 = !{i64 2155182407}
!43 = !{i64 2155182595}
!44 = !{i64 2155178614}
!45 = !{i64 2155178802}
!46 = !{i64 2155179144}
!47 = !{i64 2155258556}
!48 = !{i64 2155261210}
!49 = !{i64 429026, i64 429043, i64 2147913113}
!50 = !{i64 2155191057}
!51 = !{i64 2155191266}
!52 = !{i64 2155191609}
!53 = !{i64 2155191958}
!54 = !{i64 2155223908}
!55 = !{i64 2155153517}
!56 = !{i64 2155153866}
!57 = !{i64 2155154206}
!58 = !{i64 2155154537}
!59 = !{i64 2155164398}
!60 = !{i64 2155139044}
!61 = !{i64 2155139227}
!62 = !{i64 2155139682}
!63 = !{i64 2155168585}
!64 = !{i64 2155168773}
!65 = !{i64 2155169248}
!66 = !{i64 2155171530}
!67 = !{i64 2155172311}
!68 = !{i64 2155238966}
!69 = !{i64 2155239159}
!70 = !{i64 2148967879}
!71 = !{i64 2148963703}
!72 = !{i64 2148963778, i64 2148963805, i64 2148963852, i64 2148963874, i64 2148963902, i64 2148963922}
!73 = !{i64 2148990882}
!74 = !{i64 2155173915}
!75 = !{i64 2155174328}
!76 = !{i64 2155174738}
!77 = !{i64 2155175145}
!78 = !{i64 2155175673}
!79 = !{i64 2155175861}
!80 = !{i64 2155176336}
!81 = !{i64 2155183476}
!82 = !{i64 2155183672}
!83 = !{i64 2155184153}
!84 = !{i64 2155166017}
!85 = !{i64 2155166368}
!86 = !{i64 2155166732}
!87 = !{i64 2155167251}
!88 = !{i64 2155188810}
!89 = !{i64 2155189015}
!90 = !{i64 2155195990}
!91 = !{i64 2155196727}
!92 = !{i64 2155197221}
!93 = !{i64 2155197965}
!94 = !{i64 2155198299}
!95 = !{i64 2155198792}
!96 = !{i64 2155199120}
!97 = !{i64 2155199850}
!98 = !{i64 2155200333}
!99 = !{i64 2155203683}
!100 = !{i64 2155210841}
!101 = !{i64 2155211187}
!102 = !{i64 2155211375}
!103 = !{i64 2155251792}
!104 = !{i64 2155251995}
!105 = !{i64 2155252500}
!106 = !{i64 2155213099}
!107 = !{i64 2155213287}
!108 = !{i64 2155213611}
!109 = !{i64 2155214109}
!110 = !{i64 2155249693}
!111 = !{i64 2155249895}
!112 = !{i64 2155250398}
!113 = !{i64 2155220320}
!114 = !{i64 2155235632}
!115 = !{i64 2155235828}
!116 = !{i64 2155266671}
!117 = !{i64 2155267008}
!118 = !{i64 2155145415}
!119 = !{i64 2155147326}
!120 = !{i64 2155149046}
!121 = !{i64 2155150960}
!122 = !{i64 2155151142}
!123 = !{i64 2155151466}
!124 = !{i64 2155153189}
!125 = !{i64 2155245285}
!126 = !{i64 2155246128}
!127 = !{i64 2155248207}
!128 = !{i64 2155223188}
!129 = !{i64 2155223546}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 2155234149}
!132 = !{i64 2155234510}
!133 = !{i64 2155234865}
!134 = !{i64 2155235226}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 2155232476}
!137 = !{i64 2155228911}
!138 = !{i64 2155229232, i64 2155229719, i64 2155229269, i64 2155229325, i64 2155229359, i64 2155229383, i64 2155229424, i64 2155229445, i64 2155229473, i64 2155229507}
!139 = !{i64 2155230147}
!140 = !{i64 2155230652}
!141 = !{i64 2155231531}
!142 = !{i64 2155236329}
!143 = !{i64 2155236525}
