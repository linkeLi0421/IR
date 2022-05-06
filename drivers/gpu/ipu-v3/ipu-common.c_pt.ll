; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-common.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_get_num:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_get_num\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_get_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_srm_dp_update:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_srm_dp_update\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_srm_dp_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_drm_fourcc_to_colorspace:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_drm_fourcc_to_colorspace\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_drm_fourcc_to_colorspace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_pixelformat_to_colorspace:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_pixelformat_to_colorspace\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_pixelformat_to_colorspace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_degrees_to_rot_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_degrees_to_rot_mode\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_degrees_to_rot_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_rot_mode_to_degrees:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_rot_mode_to_degrees\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_rot_mode_to_degrees:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_get\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_put\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_set_double_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_set_double_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_set_double_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_lock_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_lock_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_lock_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_module_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_module_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_module_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_module_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_module_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_module_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_get_current_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_get_current_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_get_current_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_buffer_is_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_buffer_is_ready\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_buffer_is_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_select_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_select_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_select_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_clear_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_clear_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_clear_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_enable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_enable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_channel_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_channel_busy\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_channel_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_wait_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_wait_busy\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_wait_busy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_disable_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_disable_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_enable_watermark:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_enable_watermark\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_enable_watermark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_set_csi_src_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_set_csi_src_mux\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_set_csi_src_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_set_ic_src_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_set_ic_src_mux\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_set_ic_src_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_fsu_link:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_fsu_link\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_fsu_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_fsu_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_fsu_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_fsu_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_link:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_link\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_map_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_map_irq\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_map_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_idmac_channel_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_idmac_channel_irq\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_idmac_channel_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_dump\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.71 = type { i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsu_link_info = type { %struct.fsu_link_reg_info, %struct.fsu_link_reg_info }
%struct.fsu_link_reg_info = type { i32, i32, i32, i32 }
%struct.ipu_devtype = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipu_platform_reg = type { %struct.ipu_client_platformdata, ptr }
%struct.ipu_client_platformdata = type { i32, i32, i32, i32, [2 x i32], ptr }
%struct.ipu_soc = type { ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ipuv3_channel = type { i32, ptr, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__kstrtab_ipu_get_num = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_get_num = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_get_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_get_num to i32), ptr @__kstrtab_ipu_get_num, ptr @__kstrtabns_ipu_get_num }, section "___ksymtab_gpl+ipu_get_num", align 4
@__kstrtab_ipu_srm_dp_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_srm_dp_update = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_srm_dp_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_srm_dp_update to i32), ptr @__kstrtab_ipu_srm_dp_update, ptr @__kstrtabns_ipu_srm_dp_update }, section "___ksymtab_gpl+ipu_srm_dp_update", align 4
@__kstrtab_ipu_drm_fourcc_to_colorspace = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_drm_fourcc_to_colorspace = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_drm_fourcc_to_colorspace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_drm_fourcc_to_colorspace to i32), ptr @__kstrtab_ipu_drm_fourcc_to_colorspace, ptr @__kstrtabns_ipu_drm_fourcc_to_colorspace }, section "___ksymtab_gpl+ipu_drm_fourcc_to_colorspace", align 4
@__kstrtab_ipu_pixelformat_to_colorspace = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_pixelformat_to_colorspace = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_pixelformat_to_colorspace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_pixelformat_to_colorspace to i32), ptr @__kstrtab_ipu_pixelformat_to_colorspace, ptr @__kstrtabns_ipu_pixelformat_to_colorspace }, section "___ksymtab_gpl+ipu_pixelformat_to_colorspace", align 4
@__kstrtab_ipu_degrees_to_rot_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_degrees_to_rot_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_degrees_to_rot_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_degrees_to_rot_mode to i32), ptr @__kstrtab_ipu_degrees_to_rot_mode, ptr @__kstrtabns_ipu_degrees_to_rot_mode }, section "___ksymtab_gpl+ipu_degrees_to_rot_mode", align 4
@__kstrtab_ipu_rot_mode_to_degrees = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_rot_mode_to_degrees = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_rot_mode_to_degrees = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_rot_mode_to_degrees to i32), ptr @__kstrtab_ipu_rot_mode_to_degrees, ptr @__kstrtabns_ipu_rot_mode_to_degrees }, section "___ksymtab_gpl+ipu_rot_mode_to_degrees", align 4
@__kstrtab_ipu_idmac_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_get to i32), ptr @__kstrtab_ipu_idmac_get, ptr @__kstrtabns_ipu_idmac_get }, section "___ksymtab_gpl+ipu_idmac_get", align 4
@__kstrtab_ipu_idmac_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_put to i32), ptr @__kstrtab_ipu_idmac_put, ptr @__kstrtabns_ipu_idmac_put }, section "___ksymtab_gpl+ipu_idmac_put", align 4
@__kstrtab_ipu_idmac_set_double_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_set_double_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_set_double_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_set_double_buffer to i32), ptr @__kstrtab_ipu_idmac_set_double_buffer, ptr @__kstrtabns_ipu_idmac_set_double_buffer }, section "___ksymtab_gpl+ipu_idmac_set_double_buffer", align 4
@idmac_lock_en_info = internal unnamed_addr constant [17 x %struct.anon.71] [%struct.anon.71 { i32 5, i32 36, i32 0 }, %struct.anon.71 { i32 11, i32 36, i32 2 }, %struct.anon.71 { i32 12, i32 36, i32 4 }, %struct.anon.71 { i32 14, i32 36, i32 6 }, %struct.anon.71 { i32 15, i32 36, i32 8 }, %struct.anon.71 { i32 20, i32 36, i32 10 }, %struct.anon.71 { i32 21, i32 36, i32 12 }, %struct.anon.71 { i32 22, i32 36, i32 14 }, %struct.anon.71 { i32 23, i32 36, i32 16 }, %struct.anon.71 { i32 27, i32 36, i32 18 }, %struct.anon.71 { i32 28, i32 36, i32 20 }, %struct.anon.71 { i32 45, i32 40, i32 0 }, %struct.anon.71 { i32 46, i32 40, i32 2 }, %struct.anon.71 { i32 47, i32 40, i32 4 }, %struct.anon.71 { i32 48, i32 40, i32 6 }, %struct.anon.71 { i32 49, i32 40, i32 8 }, %struct.anon.71 { i32 50, i32 40, i32 10 }], align 4
@__kstrtab_ipu_idmac_lock_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_lock_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_lock_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_lock_enable to i32), ptr @__kstrtab_ipu_idmac_lock_enable, ptr @__kstrtabns_ipu_idmac_lock_enable }, section "___ksymtab_gpl+ipu_idmac_lock_enable", align 4
@__kstrtab_ipu_module_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_module_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_module_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_module_enable to i32), ptr @__kstrtab_ipu_module_enable, ptr @__kstrtabns_ipu_module_enable }, section "___ksymtab_gpl+ipu_module_enable", align 4
@__kstrtab_ipu_module_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_module_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_module_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_module_disable to i32), ptr @__kstrtab_ipu_module_disable, ptr @__kstrtabns_ipu_module_disable }, section "___ksymtab_gpl+ipu_module_disable", align 4
@__kstrtab_ipu_idmac_get_current_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_get_current_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_get_current_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_get_current_buffer to i32), ptr @__kstrtab_ipu_idmac_get_current_buffer, ptr @__kstrtabns_ipu_idmac_get_current_buffer }, section "___ksymtab_gpl+ipu_idmac_get_current_buffer", align 4
@__kstrtab_ipu_idmac_buffer_is_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_buffer_is_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_buffer_is_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_buffer_is_ready to i32), ptr @__kstrtab_ipu_idmac_buffer_is_ready, ptr @__kstrtabns_ipu_idmac_buffer_is_ready }, section "___ksymtab_gpl+ipu_idmac_buffer_is_ready", align 4
@__kstrtab_ipu_idmac_select_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_select_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_select_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_select_buffer to i32), ptr @__kstrtab_ipu_idmac_select_buffer, ptr @__kstrtabns_ipu_idmac_select_buffer }, section "___ksymtab_gpl+ipu_idmac_select_buffer", align 4
@__kstrtab_ipu_idmac_clear_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_clear_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_clear_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_clear_buffer to i32), ptr @__kstrtab_ipu_idmac_clear_buffer, ptr @__kstrtabns_ipu_idmac_clear_buffer }, section "___ksymtab_gpl+ipu_idmac_clear_buffer", align 4
@__kstrtab_ipu_idmac_enable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_enable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_enable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_enable_channel to i32), ptr @__kstrtab_ipu_idmac_enable_channel, ptr @__kstrtabns_ipu_idmac_enable_channel }, section "___ksymtab_gpl+ipu_idmac_enable_channel", align 4
@__kstrtab_ipu_idmac_channel_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_channel_busy = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_channel_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_channel_busy to i32), ptr @__kstrtab_ipu_idmac_channel_busy, ptr @__kstrtabns_ipu_idmac_channel_busy }, section "___ksymtab_gpl+ipu_idmac_channel_busy", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_ipu_idmac_wait_busy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_wait_busy = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_wait_busy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_wait_busy to i32), ptr @__kstrtab_ipu_idmac_wait_busy, ptr @__kstrtabns_ipu_idmac_wait_busy }, section "___ksymtab_gpl+ipu_idmac_wait_busy", align 4
@__kstrtab_ipu_idmac_disable_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_disable_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_disable_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_disable_channel to i32), ptr @__kstrtab_ipu_idmac_disable_channel, ptr @__kstrtabns_ipu_idmac_disable_channel }, section "___ksymtab_gpl+ipu_idmac_disable_channel", align 4
@__kstrtab_ipu_idmac_enable_watermark = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_enable_watermark = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_enable_watermark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_enable_watermark to i32), ptr @__kstrtab_ipu_idmac_enable_watermark, ptr @__kstrtabns_ipu_idmac_enable_watermark }, section "___ksymtab_gpl+ipu_idmac_enable_watermark", align 4
@__kstrtab_ipu_set_csi_src_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_set_csi_src_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_set_csi_src_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_set_csi_src_mux to i32), ptr @__kstrtab_ipu_set_csi_src_mux, ptr @__kstrtabns_ipu_set_csi_src_mux }, section "___ksymtab_gpl+ipu_set_csi_src_mux", align 4
@__kstrtab_ipu_set_ic_src_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_set_ic_src_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_set_ic_src_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_set_ic_src_mux to i32), ptr @__kstrtab_ipu_set_ic_src_mux, ptr @__kstrtabns_ipu_set_ic_src_mux }, section "___ksymtab_gpl+ipu_set_ic_src_mux", align 4
@__kstrtab_ipu_fsu_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_fsu_link = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_fsu_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_fsu_link to i32), ptr @__kstrtab_ipu_fsu_link, ptr @__kstrtabns_ipu_fsu_link }, section "___ksymtab_gpl+ipu_fsu_link", align 4
@__kstrtab_ipu_fsu_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_fsu_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_fsu_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_fsu_unlink to i32), ptr @__kstrtab_ipu_fsu_unlink, ptr @__kstrtabns_ipu_fsu_unlink }, section "___ksymtab_gpl+ipu_fsu_unlink", align 4
@__kstrtab_ipu_idmac_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_link = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_link to i32), ptr @__kstrtab_ipu_idmac_link, ptr @__kstrtabns_ipu_idmac_link }, section "___ksymtab_gpl+ipu_idmac_link", align 4
@__kstrtab_ipu_idmac_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_unlink to i32), ptr @__kstrtab_ipu_idmac_unlink, ptr @__kstrtabns_ipu_idmac_unlink }, section "___ksymtab_gpl+ipu_idmac_unlink", align 4
@imx_ipu_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipu_type_imx51 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipu_type_imx53 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipu_type_imx6q }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-ipu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ipu_type_imx6q }, %struct.of_device_id zeroinitializer], align 4
@__kstrtab_ipu_map_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_map_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_map_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_map_irq to i32), ptr @__kstrtab_ipu_map_irq, ptr @__kstrtabns_ipu_map_irq }, section "___ksymtab_gpl+ipu_map_irq", align 4
@__kstrtab_ipu_idmac_channel_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_idmac_channel_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_idmac_channel_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_idmac_channel_irq to i32), ptr @__kstrtab_ipu_idmac_channel_irq, ptr @__kstrtabns_ipu_idmac_channel_irq }, section "___ksymtab_gpl+ipu_idmac_channel_irq", align 4
@__kstrtab_ipu_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_dump to i32), ptr @__kstrtab_ipu_dump, ptr @__kstrtabns_ipu_dump }, section "___ksymtab_gpl+ipu_dump", align 4
@__UNIQUE_ID_alias264 = internal constant [25 x i8] c"alias=platform:imx-ipuv3\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [31 x i8] c"description=i.MX IPU v3 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [45 x i8] c"author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@fsu_link_info = internal unnamed_addr constant [4 x %struct.fsu_link_info] [%struct.fsu_link_info { %struct.fsu_link_reg_info { i32 20, i32 172, i32 15, i32 1 }, %struct.fsu_link_reg_info { i32 45, i32 168, i32 15, i32 7 } }, %struct.fsu_link_info { %struct.fsu_link_reg_info { i32 21, i32 172, i32 240, i32 16 }, %struct.fsu_link_reg_info { i32 46, i32 168, i32 3840, i32 2048 } }, %struct.fsu_link_info { %struct.fsu_link_reg_info { i32 22, i32 172, i32 61440, i32 12288 }, %struct.fsu_link_reg_info { i32 47, i32 168, i32 983040, i32 327680 } }, %struct.fsu_link_info { %struct.fsu_link_reg_info { i32 6, i32 0, i32 0, i32 0 }, %struct.fsu_link_reg_info { i32 7, i32 168, i32 805306368, i32 268435456 } }], align 4
@ipu_type_imx51 = internal global %struct.ipu_devtype { ptr @.str, i32 503316480, i32 520093696, i32 520355840, i32 520486912, i32 503513088, i32 503545856, i32 503447552, i32 503578624, i32 503611392, i32 520617984, i32 503742464, i32 0 }, align 4
@ipu_type_imx53 = internal global %struct.ipu_devtype { ptr @.str.1, i32 100663296, i32 117440512, i32 117702656, i32 117833728, i32 100859904, i32 100892672, i32 100794368, i32 100925440, i32 100958208, i32 117964800, i32 101089280, i32 1 }, align 4
@ipu_type_imx6q = internal global %struct.ipu_devtype { ptr @.str.2, i32 2097152, i32 3145728, i32 3407872, i32 3538944, i32 2293760, i32 2326528, i32 2228224, i32 2359296, i32 2392064, i32 3670016, i32 2523136, i32 2 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"IPUv3EX\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"IPUv3M\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"IPUv3H\00", align 1
@drivers = internal constant [3 x ptr] [ptr @ipu_pre_drv, ptr @ipu_prg_drv, ptr @imx_ipu_driver], align 4
@__this_module = external dso_local global %struct.module, align 64
@ipu_pre_drv = external dso_local global %struct.platform_driver, align 4
@ipu_prg_drv = external dso_local global %struct.platform_driver, align 4
@imx_ipu_driver = internal global %struct.platform_driver { ptr @ipu_probe, ptr @ipu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_ipu_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"imx-ipuv3\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ipu\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fsl,imx6qp-ipu\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"fsl,prg\00", align 1
@ipu_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"&ipu->channel_lock\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"clk_get failed with %d\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"clk_prepare_enable failed: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"failed to reset: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"adding client devices failed with %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s probed\0A\00", align 1
@__const.ipu_irq_init.unused = private unnamed_addr constant [15 x i32] [i32 1073807568, i32 -2096899, i32 1073807568, i32 -2096899, i32 1073807568, i32 -2096899, i32 1081606143, i32 -1580547, i32 603979774, i32 -2004811792, i32 -108009520, i32 -516097, i32 1073807568, i32 -2096899, i32 0], align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"failed to add irq domain\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"IPU\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"failed to alloc generic irq chips\0A\00", align 1
@ipu_irq_handler.int_reg = internal constant [9 x i32] [i32 0, i32 1, i32 2, i32 3, i32 10, i32 11, i32 12, i32 13, i32 14], align 4
@ipu_err_irq_handler.int_reg = internal constant [4 x i32] [i32 4, i32 5, i32 8, i32 9], align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"cpmem\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"csi0\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"csi1\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"vdi\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"image_convert\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"di0\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"di1\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"dc_template\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"dmfc\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"smfc\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"init %s failed with %d\0A\00", align 1
@ipu_client_id_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipu_client_id_mutex, i64 12), ptr getelementptr (i8, ptr @ipu_client_id_mutex, i64 12) } }, align 4
@ipu_client_id = internal unnamed_addr global i32 0, align 4
@client_reg = internal global [4 x %struct.ipu_platform_reg] [%struct.ipu_platform_reg { %struct.ipu_client_platformdata { i32 0, i32 0, i32 0, i32 0, [2 x i32] [i32 0, i32 -22], ptr null }, ptr @.str.33 }, %struct.ipu_platform_reg { %struct.ipu_client_platformdata { i32 1, i32 0, i32 0, i32 0, [2 x i32] [i32 1, i32 -22], ptr null }, ptr @.str.33 }, %struct.ipu_platform_reg { %struct.ipu_client_platformdata { i32 0, i32 0, i32 5, i32 0, [2 x i32] [i32 23, i32 27], ptr null }, ptr @.str.34 }, %struct.ipu_platform_reg { %struct.ipu_client_platformdata { i32 0, i32 1, i32 1, i32 -22, [2 x i32] [i32 28, i32 -22], ptr null }, ptr @.str.34 }], align 4
@.str.30 = private unnamed_addr constant [41 x i8] c"no port@%d node in %pOF, not using %s%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"CSI\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"imx-ipuv3-csi\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"imx-ipuv3-crtc\00", align 1
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias264, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_license267, ptr @__ksymtab_ipu_degrees_to_rot_mode, ptr @__ksymtab_ipu_drm_fourcc_to_colorspace, ptr @__ksymtab_ipu_dump, ptr @__ksymtab_ipu_fsu_link, ptr @__ksymtab_ipu_fsu_unlink, ptr @__ksymtab_ipu_get_num, ptr @__ksymtab_ipu_idmac_buffer_is_ready, ptr @__ksymtab_ipu_idmac_channel_busy, ptr @__ksymtab_ipu_idmac_channel_irq, ptr @__ksymtab_ipu_idmac_clear_buffer, ptr @__ksymtab_ipu_idmac_disable_channel, ptr @__ksymtab_ipu_idmac_enable_channel, ptr @__ksymtab_ipu_idmac_enable_watermark, ptr @__ksymtab_ipu_idmac_get, ptr @__ksymtab_ipu_idmac_get_current_buffer, ptr @__ksymtab_ipu_idmac_link, ptr @__ksymtab_ipu_idmac_lock_enable, ptr @__ksymtab_ipu_idmac_put, ptr @__ksymtab_ipu_idmac_select_buffer, ptr @__ksymtab_ipu_idmac_set_double_buffer, ptr @__ksymtab_ipu_idmac_unlink, ptr @__ksymtab_ipu_idmac_wait_busy, ptr @__ksymtab_ipu_map_irq, ptr @__ksymtab_ipu_module_disable, ptr @__ksymtab_ipu_module_enable, ptr @__ksymtab_ipu_pixelformat_to_colorspace, ptr @__ksymtab_ipu_rot_mode_to_degrees, ptr @__ksymtab_ipu_set_csi_src_mux, ptr @__ksymtab_ipu_set_ic_src_mux, ptr @__ksymtab_ipu_srm_dp_update], section "llvm.metadata"
@switch.table.ipu_rot_mode_to_degrees = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 0, i32 180, i32 90, i32 0, i32 0, i32 270], align 4

@__mod_of__imx_ipu_dt_ids_device_table = dso_local alias [5 x %struct.of_device_id], ptr @imx_ipu_dt_ids

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_get_num(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_srm_dp_update(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 164
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %7 = and i32 %6, -25
  %8 = select i1 %1, i32 8, i32 24
  %9 = or i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr i8, ptr %10, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #11, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_drm_fourcc_to_colorspace(i32 noundef %0) #3 {
  switch i32 %0, label %3 [
    i32 892424769, label %4
    i32 892420673, label %4
    i32 892420434, label %4
    i32 892420418, label %4
    i32 909199186, label %4
    i32 909199170, label %4
    i32 875710290, label %4
    i32 875710274, label %4
    i32 842093121, label %4
    i32 875713112, label %4
    i32 875709016, label %4
    i32 875714642, label %4
    i32 875714626, label %4
    i32 875713089, label %4
    i32 875708993, label %4
    i32 875708754, label %4
    i32 875708738, label %4
    i32 943797586, label %4
    i32 943797570, label %4
    i32 943798354, label %4
    i32 943798338, label %4
    i32 943806546, label %4
    i32 943806530, label %4
    i32 1448695129, label %2
    i32 1498831189, label %2
    i32 842093913, label %2
    i32 842094169, label %2
    i32 909202777, label %2
    i32 909203033, label %2
    i32 875713881, label %2
    i32 875714137, label %2
    i32 842094158, label %2
    i32 825382478, label %2
    i32 909203022, label %2
    i32 825644622, label %2
  ]

2:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %2, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %5 = phi i32 [ 2, %3 ], [ 1, %2 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_pixelformat_to_colorspace(i32 noundef %0) #3 {
  switch i32 %0, label %3 [
    i32 842093913, label %4
    i32 842094169, label %4
    i32 1345466932, label %4
    i32 1498831189, label %4
    i32 1448695129, label %4
    i32 842094158, label %4
    i32 825382478, label %4
    i32 909203022, label %4
    i32 825644622, label %4
    i32 1346520914, label %2
    i32 861030210, label %2
    i32 859981650, label %2
    i32 875713089, label %2
    i32 875713112, label %2
    i32 875708754, label %2
    i32 875714642, label %2
    i32 875708993, label %2
    i32 875709016, label %2
    i32 875708738, label %2
    i32 875714626, label %2
    i32 876758866, label %2
    i32 877807426, label %2
  ]

2:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %2, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %5 = phi i32 [ 2, %3 ], [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ipu_degrees_to_rot_mode(ptr nocapture noundef writeonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #4 {
  switch i32 %1, label %18 [
    i32 0, label %8
    i32 90, label %5
    i32 180, label %6
    i32 270, label %7
  ]

5:                                                ; preds = %4
  br label %8

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6, %5, %4
  %9 = phi i32 [ 4, %7 ], [ 0, %6 ], [ 4, %5 ], [ %1, %4 ]
  %10 = phi i32 [ 1, %7 ], [ 1, %6 ], [ 0, %5 ], [ %1, %4 ]
  %11 = zext i1 %2 to i32
  %12 = xor i32 %10, %11
  %13 = zext i1 %3 to i32
  %14 = xor i32 %10, %13
  %15 = shl nuw nsw i32 %12, 1
  %16 = or i32 %15, %9
  %17 = or i32 %16, %14
  store i32 %17, ptr %0, align 4
  br label %18

18:                                               ; preds = %8, %4
  %19 = phi i32 [ 0, %8 ], [ -22, %4 ]
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ipu_rot_mode_to_degrees(ptr nocapture noundef writeonly %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #4 {
  %5 = and i32 %1, 4
  %6 = and i32 %1, 1
  %7 = zext i1 %3 to i32
  %8 = xor i32 %6, %7
  %9 = select i1 %2, i32 2, i32 0
  %10 = and i32 %1, 2
  %11 = xor i32 %9, %10
  %12 = or i32 %11, %5
  %13 = or i32 %12, %8
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 -103, %14
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds [8 x i32], ptr @switch.table.ipu_rot_mode_to_degrees, i32 0, i32 %13
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %0, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i32 [ 0, %18 ], [ -22, %4 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_idmac_get(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp ugt i32 %1, 63
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 -8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %25, label %7

15:                                               ; preds = %7
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  store i32 %1, ptr %17, align 8
  %20 = getelementptr inbounds %struct.ipuv3_channel, ptr %17, i32 0, i32 1
  store ptr %0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ipuv3_channel, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store ptr %22, ptr %21, align 8
  %24 = getelementptr inbounds %struct.ipuv3_channel, ptr %17, i32 0, i32 2, i32 1
  store ptr %6, ptr %24, align 4
  store volatile ptr %21, ptr %6, align 4
  br label %25

25:                                               ; preds = %19, %15, %11
  %26 = phi ptr [ %17, %19 ], [ inttoptr (i32 -12 to ptr), %15 ], [ inttoptr (i32 -16 to ptr), %11 ]
  tail call void @mutex_unlock(ptr noundef %5) #11
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi ptr [ %26, %25 ], [ inttoptr (i32 -19 to ptr), %2 ]
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_idmac_put(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @kfree(ptr noundef %0) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_idmac_set_double_buffer(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = load i32, ptr %0, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 536870908
  %10 = add nuw nsw i32 %9, 336
  %11 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %15 = load i32, ptr %0, align 4
  %16 = and i32 %15, 31
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %14
  %19 = xor i32 %17, -1
  %20 = and i32 %14, %19
  %21 = select i1 %1, i32 %18, i32 %20
  %22 = lshr i32 %15, 3
  %23 = and i32 %22, 536870908
  %24 = add nuw nsw i32 %23, 336
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #11, !srcloc !11
  %27 = load ptr, ptr %3, align 4
  %28 = load i32, ptr %0, align 4
  %29 = and i32 %28, 31
  %30 = shl nuw i32 1, %29
  %31 = lshr i32 %28, 3
  %32 = and i32 %31, 536870908
  %33 = add nuw nsw i32 %32, 572
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %34 = getelementptr inbounds %struct.ipu_soc, ptr %27, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %30) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_lock_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %50 [
    i32 0, label %12
    i32 1, label %12
    i32 2, label %7
    i32 4, label %5
    i32 8, label %6
  ]

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %5, %2
  %8 = phi i32 [ 2, %5 ], [ 3, %6 ], [ 1, %2 ]
  %9 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %50

12:                                               ; preds = %7, %2, %2
  %13 = phi i32 [ %8, %7 ], [ 0, %2 ], [ 0, %2 ]
  %14 = load i32, ptr %0, align 4
  switch i32 %14, label %50 [
    i32 5, label %31
    i32 11, label %15
    i32 12, label %16
    i32 14, label %17
    i32 15, label %18
    i32 20, label %19
    i32 21, label %20
    i32 22, label %21
    i32 23, label %22
    i32 27, label %23
    i32 28, label %24
    i32 45, label %25
    i32 46, label %26
    i32 47, label %27
    i32 48, label %28
    i32 49, label %29
    i32 50, label %30
  ]

15:                                               ; preds = %12
  br label %31

16:                                               ; preds = %12
  br label %31

17:                                               ; preds = %12
  br label %31

18:                                               ; preds = %12
  br label %31

19:                                               ; preds = %12
  br label %31

20:                                               ; preds = %12
  br label %31

21:                                               ; preds = %12
  br label %31

22:                                               ; preds = %12
  br label %31

23:                                               ; preds = %12
  br label %31

24:                                               ; preds = %12
  br label %31

25:                                               ; preds = %12
  br label %31

26:                                               ; preds = %12
  br label %31

27:                                               ; preds = %12
  br label %31

28:                                               ; preds = %12
  br label %31

29:                                               ; preds = %12
  br label %31

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %12
  %32 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 2, %16 ], [ 3, %17 ], [ 4, %18 ], [ 5, %19 ], [ 6, %20 ], [ 7, %21 ], [ 8, %22 ], [ 9, %23 ], [ 10, %24 ], [ 11, %25 ], [ 12, %26 ], [ 13, %27 ], [ 14, %28 ], [ 15, %29 ], [ 16, %30 ]
  %33 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 3
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #11
  %35 = getelementptr [17 x %struct.anon.71], ptr @idmac_lock_en_info, i32 0, i32 %32, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 %36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %41 = getelementptr [17 x %struct.anon.71], ptr @idmac_lock_en_info, i32 0, i32 %32, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 3, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %40, %44
  %46 = shl i32 %13, %42
  %47 = or i32 %45, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %48 = load ptr, ptr %37, align 4
  %49 = getelementptr i8, ptr %48, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #11
  br label %50

50:                                               ; preds = %31, %12, %7, %2
  %51 = phi i32 [ 0, %31 ], [ -22, %2 ], [ -22, %7 ], [ -22, %12 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_module_enable(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 196
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %9 = shl i32 %1, 18
  %10 = and i32 %9, 50331648
  %11 = or i32 %10, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #11, !srcloc !11
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %16 = or i32 %15, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %17 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %16) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_module_disable(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %8 = xor i32 %1, -1
  %9 = and i32 %7, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %10 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %9) #11, !srcloc !11
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 196
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %14 = and i32 %1, 64
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %13, -16777217
  %17 = select i1 %15, i32 %13, i32 %16
  %18 = and i32 %1, 128
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %17, -33554433
  %21 = select i1 %19, i32 %17, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_get_current_buffer(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 536870908
  %7 = add nuw nsw i32 %6, 572
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %12 = and i32 %4, 31
  %13 = lshr i32 %11, %12
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_idmac_buffer_is_ready(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  switch i32 %1, label %34 [
    i32 0, label %7
    i32 1, label %16
    i32 2, label %25
  ]

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 4
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 536870908
  %11 = add nuw nsw i32 %10, 616
  %12 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  br label %34

16:                                               ; preds = %2
  %17 = load i32, ptr %0, align 4
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 536870908
  %20 = add nuw nsw i32 %19, 624
  %21 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  br label %34

25:                                               ; preds = %2
  %26 = load i32, ptr %0, align 4
  %27 = lshr i32 %26, 3
  %28 = and i32 %27, 536870908
  %29 = add nuw nsw i32 %28, 648
  %30 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 %29
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  br label %34

34:                                               ; preds = %25, %16, %7, %2
  %35 = phi i32 [ 0, %2 ], [ %33, %25 ], [ %24, %16 ], [ %15, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  %36 = load i32, ptr %0, align 4
  %37 = and i32 %36, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %35
  %40 = icmp ne i32 %39, 0
  ret i1 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_idmac_select_buffer(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = icmp eq i32 %1, 0
  %9 = and i32 %5, 31
  %10 = shl nuw i32 1, %9
  %11 = lshr i32 %5, 3
  %12 = and i32 %11, 536870908
  br i1 %8, label %13, label %18

13:                                               ; preds = %2
  %14 = add nuw nsw i32 %12, 616
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %15 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %10) #11, !srcloc !11
  br label %23

18:                                               ; preds = %2
  %19 = add nuw nsw i32 %12, 624
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %20 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %10) #11, !srcloc !11
  br label %23

23:                                               ; preds = %18, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_idmac_clear_buffer(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -265289728) #11, !srcloc !11
  switch i32 %1, label %35 [
    i32 0, label %11
    i32 1, label %19
    i32 2, label %27
  ]

11:                                               ; preds = %2
  %12 = and i32 %5, 31
  %13 = shl nuw i32 1, %12
  %14 = lshr i32 %5, 3
  %15 = and i32 %14, 536870908
  %16 = add nuw nsw i32 %15, 616
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %13) #11, !srcloc !11
  br label %35

19:                                               ; preds = %2
  %20 = and i32 %5, 31
  %21 = shl nuw i32 1, %20
  %22 = lshr i32 %5, 3
  %23 = and i32 %22, 536870908
  %24 = add nuw nsw i32 %23, 624
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #11, !srcloc !11
  br label %35

27:                                               ; preds = %2
  %28 = and i32 %5, 31
  %29 = shl nuw i32 1, %28
  %30 = lshr i32 %5, 3
  %31 = and i32 %30, 536870908
  %32 = add nuw nsw i32 %31, 648
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %29) #11, !srcloc !11
  br label %35

35:                                               ; preds = %27, %19, %11, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr i8, ptr %36, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_enable_channel(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = load i32, ptr %0, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %8, 4
  %10 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %14 = load i32, ptr %0, align 4
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = or i32 %16, %13
  %18 = lshr i32 %14, 3
  %19 = and i32 %18, 536870908
  %20 = add nuw nsw i32 %19, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %17) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_idmac_channel_busy(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = lshr i32 %1, 3
  %4 = and i32 %3, 536870908
  %5 = add nuw nsw i32 %4, 256
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_wait_busy(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #11
  %7 = add i32 %6, %5
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 7
  %9 = load i32, ptr %0, align 4
  %10 = lshr i32 %9, 3
  %11 = and i32 %10, 536870908
  %12 = add nuw nsw i32 %11, 256
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 %12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %16 = load i32, ptr %0, align 4
  %17 = and i32 %16, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %25, %2
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = sub i32 %7, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !15
  %26 = load i32, ptr %0, align 4
  %27 = lshr i32 %26, 3
  %28 = and i32 %27, 536870908
  %29 = add nuw nsw i32 %28, 256
  %30 = load ptr, ptr %8, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %33 = load i32, ptr %0, align 4
  %34 = and i32 %33, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %21

38:                                               ; preds = %25, %21, %2
  %39 = phi i32 [ 0, %2 ], [ 0, %25 ], [ -110, %21 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_disable_channel(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = load i32, ptr %0, align 4
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 536870908
  %9 = add nuw nsw i32 %8, 4
  %10 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %14 = load i32, ptr %0, align 4
  %15 = and i32 %14, 31
  %16 = shl nuw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = lshr i32 %14, 3
  %20 = and i32 %19, 536870908
  %21 = add nuw nsw i32 %20, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %18) #11, !srcloc !11
  %24 = load ptr, ptr %2, align 4
  %25 = load i32, ptr %0, align 4
  %26 = and i32 %25, 31
  %27 = shl nuw i32 1, %26
  %28 = lshr i32 %25, 3
  %29 = and i32 %28, 536870908
  %30 = add nuw nsw i32 %29, 572
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %31 = getelementptr inbounds %struct.ipu_soc, ptr %24, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %27) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %34 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 -268435456) #11, !srcloc !11
  %37 = load i32, ptr %0, align 4
  %38 = lshr i32 %37, 3
  %39 = and i32 %38, 536870908
  %40 = add nuw nsw i32 %39, 616
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr i8, ptr %41, i32 %40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %44 = load i32, ptr %0, align 4
  %45 = and i32 %44, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %43
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %1
  %50 = lshr i32 %44, 3
  %51 = and i32 %50, 536870908
  %52 = add nuw nsw i32 %51, 616
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %53 = load ptr, ptr %34, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %46) #11, !srcloc !11
  %55 = load i32, ptr %0, align 4
  br label %56

56:                                               ; preds = %49, %1
  %57 = phi i32 [ %55, %49 ], [ %44, %1 ]
  %58 = lshr i32 %57, 3
  %59 = and i32 %58, 536870908
  %60 = add nuw nsw i32 %59, 624
  %61 = load ptr, ptr %34, align 4
  %62 = getelementptr i8, ptr %61, i32 %60
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %64 = load i32, ptr %0, align 4
  %65 = and i32 %64, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %63
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %56
  %70 = lshr i32 %64, 3
  %71 = and i32 %70, 536870908
  %72 = add nuw nsw i32 %71, 624
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %73 = load ptr, ptr %34, align 4
  %74 = getelementptr i8, ptr %73, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %66) #11, !srcloc !11
  br label %75

75:                                               ; preds = %69, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %76 = load ptr, ptr %34, align 4
  %77 = getelementptr i8, ptr %76, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #11, !srcloc !11
  %78 = load i32, ptr %0, align 4
  %79 = lshr i32 %78, 3
  %80 = and i32 %79, 536870908
  %81 = add nuw nsw i32 %80, 336
  %82 = load ptr, ptr %34, align 4
  %83 = getelementptr i8, ptr %82, i32 %81
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %85 = load i32, ptr %0, align 4
  %86 = and i32 %85, 31
  %87 = shl nuw i32 1, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  %90 = lshr i32 %85, 3
  %91 = and i32 %90, 536870908
  %92 = add nuw nsw i32 %91, 336
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %93 = load ptr, ptr %34, align 4
  %94 = getelementptr i8, ptr %93, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %89) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_idmac_enable_watermark(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = load i32, ptr %0, align 4
  %8 = lshr i32 %7, 3
  %9 = and i32 %8, 536870908
  %10 = add nuw nsw i32 %9, 28
  %11 = getelementptr inbounds %struct.ipu_soc, ptr %4, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !12
  %15 = load i32, ptr %0, align 4
  %16 = and i32 %15, 31
  %17 = shl nuw i32 1, %16
  %18 = or i32 %17, %14
  %19 = xor i32 %17, -1
  %20 = and i32 %14, %19
  %21 = select i1 %1, i32 %18, i32 %20
  %22 = lshr i32 %15, 3
  %23 = and i32 %22, 536870908
  %24 = add nuw nsw i32 %23, 28
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !13
  tail call void @arm_heavy_mb() #11
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %21) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_set_csi_src_mux(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 536870912, i32 268435456
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %11 = or i32 %10, %5
  %12 = xor i32 %5, -1
  %13 = and i32 %10, %12
  %14 = select i1 %2, i32 %11, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_set_ic_src_mux(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #1 {
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %9 = and i32 %8, 1073741823
  %10 = select i1 %2, i32 1073741824, i32 0
  %11 = icmp eq i32 %1, 1
  %12 = select i1 %11, i32 -2147483648, i32 0
  %13 = or i32 %12, %10
  %14 = or i32 %13, %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %15 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #11, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_fsu_link(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  switch i32 %1, label %56 [
    i32 20, label %4
    i32 21, label %6
    i32 22, label %8
    i32 6, label %10
  ]

4:                                                ; preds = %3
  %5 = icmp eq i32 %2, 45
  br i1 %5, label %12, label %56

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 46
  br i1 %7, label %12, label %56

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 47
  br i1 %9, label %12, label %56

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 7
  br i1 %11, label %12, label %56

12:                                               ; preds = %10, %8, %6, %4
  %13 = phi ptr [ getelementptr inbounds ([4 x %struct.fsu_link_info], ptr @fsu_link_info, i32 0, i32 3), %10 ], [ getelementptr inbounds ([4 x %struct.fsu_link_info], ptr @fsu_link_info, i32 0, i32 2), %8 ], [ getelementptr inbounds ([4 x %struct.fsu_link_info], ptr @fsu_link_info, i32 0, i32 1), %6 ], [ @fsu_link_info, %4 ]
  %14 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 3
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #11
  %16 = getelementptr inbounds %struct.fsu_link_reg_info, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.fsu_link_reg_info, ptr %13, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %26 = load i32, ptr %16, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = getelementptr inbounds %struct.fsu_link_reg_info, ptr %13, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %28, %30
  %32 = load i32, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr i8, ptr %33, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %31) #11, !srcloc !11
  br label %35

35:                                               ; preds = %19, %12
  %36 = getelementptr inbounds %struct.fsu_link_info, ptr %13, i32 0, i32 1, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.fsu_link_info, ptr %13, i32 0, i32 1, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %46 = load i32, ptr %36, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = getelementptr inbounds %struct.fsu_link_info, ptr %13, i32 0, i32 1, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %48, %50
  %52 = load i32, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %53 = load ptr, ptr %42, align 4
  %54 = getelementptr i8, ptr %53, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #11, !srcloc !11
  br label %55

55:                                               ; preds = %39, %35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #11
  br label %56

56:                                               ; preds = %55, %10, %8, %6, %4, %3
  %57 = phi i32 [ 0, %55 ], [ -22, %3 ], [ -22, %4 ], [ -22, %6 ], [ -22, %8 ], [ -22, %10 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_fsu_unlink(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  switch i32 %1, label %50 [
    i32 20, label %4
    i32 21, label %6
    i32 22, label %8
    i32 6, label %10
  ]

4:                                                ; preds = %3
  %5 = icmp eq i32 %2, 45
  br i1 %5, label %12, label %50

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 46
  br i1 %7, label %12, label %50

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 47
  br i1 %9, label %12, label %50

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 7
  br i1 %11, label %12, label %50

12:                                               ; preds = %10, %8, %6, %4
  %13 = phi ptr [ getelementptr inbounds ([4 x %struct.fsu_link_info], ptr @fsu_link_info, i32 0, i32 3), %10 ], [ getelementptr inbounds ([4 x %struct.fsu_link_info], ptr @fsu_link_info, i32 0, i32 2), %8 ], [ getelementptr inbounds ([4 x %struct.fsu_link_info], ptr @fsu_link_info, i32 0, i32 1), %6 ], [ @fsu_link_info, %4 ]
  %14 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 3
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #11
  %16 = getelementptr inbounds %struct.fsu_link_reg_info, ptr %13, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.fsu_link_reg_info, ptr %13, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %26 = load i32, ptr %16, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, ptr %20, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %30 = load ptr, ptr %22, align 4
  %31 = getelementptr i8, ptr %30, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #11, !srcloc !11
  br label %32

32:                                               ; preds = %19, %12
  %33 = getelementptr inbounds %struct.fsu_link_info, ptr %13, i32 0, i32 1, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.fsu_link_info, ptr %13, i32 0, i32 1, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %38
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %43 = load i32, ptr %33, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load i32, ptr %37, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %47 = load ptr, ptr %39, align 4
  %48 = getelementptr i8, ptr %47, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %45) #11, !srcloc !11
  br label %49

49:                                               ; preds = %36, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #11
  br label %50

50:                                               ; preds = %49, %10, %8, %6, %4, %3
  %51 = phi i32 [ 0, %49 ], [ -22, %3 ], [ -22, %4 ], [ -22, %6 ], [ -22, %8 ], [ -22, %10 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_link(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @ipu_fsu_link(ptr noundef %4, i32 noundef %5, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_unlink(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ipuv3_channel, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @ipu_fsu_unlink(ptr noundef %4, i32 noundef %5, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_map_irq(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !16
  %6 = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef %1, ptr noundef nonnull %3) #11
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4
  %13 = call i32 @irq_create_mapping_affinity(ptr noundef %12, i32 noundef %1, ptr noundef null) #11
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %8, %2 ], [ %13, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_idmac_channel_irq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = load i32, ptr %1, align 4
  %6 = add i32 %5, %2
  %7 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !16
  %9 = call ptr @__irq_resolve_mapping(ptr noundef %8, i32 noundef %6, ptr noundef nonnull %4) #11
  %10 = icmp eq ptr %9, null
  %11 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load ptr, ptr %7, align 4
  %16 = call i32 @irq_create_mapping_affinity(ptr noundef %15, i32 noundef %6, ptr noundef null) #11
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ %11, %3 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local void @ipu_dump(ptr nocapture %0) #6 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 3, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #7 section ".exit.text" {
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %166, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %9 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #11
  %10 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %11 = icmp eq ptr %10, null
  %12 = icmp slt i32 %8, 0
  %13 = select i1 %11, i1 true, i1 %12
  %14 = icmp slt i32 %9, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %166, label %16

16:                                               ; preds = %7
  %17 = load i32, ptr %10, align 4
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 128, i32 noundef 3520) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %166, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @of_alias_get_id(ptr noundef %4, ptr noundef nonnull @.str.4) #11
  %22 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 8
  %23 = tail call i32 @llvm.smax.i32(i32 %21, i32 0)
  store i32 %23, ptr %22, align 4
  %24 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.5) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32, ptr %22, align 4
  %28 = tail call ptr @ipu_prg_lookup_by_phandle(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %27) #11
  %29 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 24
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %166, label %31

31:                                               ; preds = %26, %20
  %32 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 1
  store ptr %5, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ipu_devtype, ptr %5, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %37, ptr noundef nonnull @.str.7, ptr noundef nonnull @ipu_probe.__key) #11
  %38 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 5
  store volatile ptr %38, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 5, i32 1
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ipu_devtype, ptr %5, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %17
  %43 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %42, i32 noundef 4096) #11
  %44 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 6
  store ptr %43, ptr %44, align 4
  %45 = load i32, ptr %40, align 4
  %46 = add i32 %17, 32768
  %47 = add i32 %46, %45
  %48 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %47, i32 noundef 4096) #11
  %49 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 7
  store ptr %48, ptr %49, align 4
  %50 = load ptr, ptr %44, align 4
  %51 = icmp eq ptr %50, null
  %52 = icmp eq ptr %48, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %166, label %54

54:                                               ; preds = %31
  %55 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #11
  %56 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 10
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = ptrtoint ptr %55 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %59) #13
  br label %166

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %18, ptr %61, align 8
  %62 = tail call i32 @clk_prepare(ptr noundef %55) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = tail call i32 @clk_enable(ptr noundef %55) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  tail call void @clk_unprepare(ptr noundef %55) #11
  br label %68

68:                                               ; preds = %67, %60
  %69 = phi i32 [ %65, %67 ], [ %62, %60 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %69) #13
  br label %166

70:                                               ; preds = %64
  store ptr %2, ptr %18, align 4
  %71 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 11
  store i32 %8, ptr %71, align 4
  %72 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 12
  store i32 %9, ptr %72, align 4
  %73 = tail call i32 @__device_reset(ptr noundef %2, i1 noundef zeroext false) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %73) #13
  br label %163

76:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %77 = load ptr, ptr %44, align 4
  %78 = getelementptr i8, ptr %77, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 -2139095041) #11, !srcloc !11
  %79 = load volatile i32, ptr @jiffies, align 64
  %80 = add i32 %79, 100
  %81 = load ptr, ptr %44, align 4
  %82 = getelementptr i8, ptr %81, i32 220
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %94, label %85

85:                                               ; preds = %89, %76
  %86 = load volatile i32, ptr @jiffies, align 64
  %87 = sub i32 %80, %86
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %163, label %89

89:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !18
  %90 = load ptr, ptr %44, align 4
  %91 = getelementptr i8, ptr %90, i32 220
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #11, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %85

94:                                               ; preds = %89, %76
  %95 = load ptr, ptr %18, align 4
  %96 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 25
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  %99 = getelementptr inbounds %struct.device_node, ptr %97, i32 0, i32 3
  %100 = select i1 %98, ptr null, ptr %99
  %101 = tail call ptr @__irq_domain_add(ptr noundef %100, i32 noundef 480, i32 noundef 480, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef %18) #11
  %102 = getelementptr inbounds %struct.ipu_soc, ptr %18, i32 0, i32 13
  store ptr %101, ptr %102, align 4
  %103 = icmp eq ptr %101, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.14) #13
  br label %163

106:                                              ; preds = %94
  %107 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %101, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @handle_level_irq, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.16) #13
  %111 = load ptr, ptr %102, align 4
  tail call void @irq_domain_remove(ptr noundef %111) #11
  br label %163

112:                                              ; preds = %112, %106
  %113 = phi i32 [ %125, %112 ], [ 0, %106 ]
  %114 = lshr exact i32 %113, 5
  %115 = lshr exact i32 %113, 3
  %116 = add nuw nsw i32 %115, 60
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %117 = load ptr, ptr %44, align 4
  %118 = getelementptr i8, ptr %117, i32 %116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #11, !srcloc !11
  %119 = getelementptr [15 x i32], ptr @__const.ipu_irq_init.unused, i32 0, i32 %114
  %120 = load i32, ptr %119, align 4
  %121 = xor i32 %120, -1
  %122 = add nuw nsw i32 %115, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %123 = load ptr, ptr %44, align 4
  %124 = getelementptr i8, ptr %123, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %121) #11, !srcloc !11
  %125 = add nuw nsw i32 %113, 32
  %126 = icmp ult i32 %113, 448
  br i1 %126, label %112, label %127

127:                                              ; preds = %127, %112
  %128 = phi i32 [ %145, %127 ], [ 0, %112 ]
  %129 = load ptr, ptr %102, align 4
  %130 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %129, i32 noundef %128) #11
  %131 = load ptr, ptr %44, align 4
  %132 = getelementptr inbounds %struct.irq_chip_generic, ptr %130, i32 0, i32 1
  store ptr %131, ptr %132, align 4
  %133 = lshr exact i32 %128, 5
  %134 = getelementptr [15 x i32], ptr @__const.ipu_irq_init.unused, i32 0, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.irq_chip_generic, ptr %130, i32 0, i32 16
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.irq_chip_generic, ptr %130, i32 1, i32 6
  store ptr @irq_gc_ack_set_bit, ptr %137, align 4
  %138 = getelementptr inbounds %struct.irq_chip_generic, ptr %130, i32 1, i32 7
  store ptr @irq_gc_mask_clr_bit, ptr %138, align 4
  %139 = getelementptr inbounds %struct.irq_chip_generic, ptr %130, i32 1, i32 9
  store ptr @irq_gc_mask_set_bit, ptr %139, align 4
  %140 = lshr exact i32 %128, 3
  %141 = add nuw nsw i32 %140, 512
  %142 = getelementptr inbounds %struct.irq_chip_generic, ptr %130, i32 2, i32 17
  store i32 %141, ptr %142, align 4
  %143 = add nuw nsw i32 %140, 60
  %144 = getelementptr inbounds %struct.irq_chip_generic, ptr %130, i32 2, i32 16
  store i32 %143, ptr %144, align 4
  %145 = add nuw nsw i32 %128, 32
  %146 = icmp ult i32 %128, 448
  br i1 %146, label %127, label %147

147:                                              ; preds = %127
  %148 = load i32, ptr %71, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %148, ptr noundef nonnull @ipu_irq_handler, ptr noundef %18) #11
  %149 = load i32, ptr %72, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %149, ptr noundef nonnull @ipu_err_irq_handler, ptr noundef %18) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %150 = load ptr, ptr %44, align 4
  %151 = getelementptr i8, ptr %150, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 6291456) #11, !srcloc !11
  %152 = load ptr, ptr %56, align 4
  %153 = tail call fastcc i32 @ipu_submodules_init(ptr noundef nonnull %18, ptr noundef %0, i32 noundef %17, ptr noundef %152)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = tail call fastcc i32 @ipu_add_client_devices(ptr noundef nonnull %18)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %156) #13
  tail call fastcc void @ipu_submodules_exit(ptr noundef nonnull %18)
  br label %161

159:                                              ; preds = %155
  %160 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef %160) #13
  br label %166

161:                                              ; preds = %158, %147
  %162 = phi i32 [ %153, %147 ], [ %156, %158 ]
  tail call fastcc void @ipu_irq_exit(ptr noundef nonnull %18)
  br label %163

163:                                              ; preds = %161, %109, %104, %85, %75
  %164 = phi i32 [ %73, %75 ], [ %162, %161 ], [ -19, %104 ], [ %107, %109 ], [ -62, %85 ]
  %165 = load ptr, ptr %56, align 4
  tail call void @clk_disable(ptr noundef %165) #11
  tail call void @clk_unprepare(ptr noundef %165) #11
  br label %166

166:                                              ; preds = %163, %159, %68, %58, %31, %26, %16, %7, %1
  %167 = phi i32 [ %59, %58 ], [ %69, %68 ], [ %164, %163 ], [ 0, %159 ], [ -22, %1 ], [ -19, %7 ], [ -19, %16 ], [ -517, %26 ], [ -12, %31 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @device_for_each_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @platform_remove_devices_fn) #11
  tail call fastcc void @ipu_submodules_exit(ptr noundef %3)
  tail call fastcc void @ipu_irq_exit(ptr noundef %3)
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #11
  tail call void @clk_unprepare(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_prg_lookup_by_phandle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipu_submodules_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %2
  %11 = tail call i32 @ipu_cpmem_init(ptr noundef %0, ptr noundef %5, i32 noundef %10) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %114

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %2
  %17 = tail call i32 @ipu_csi_init(ptr noundef %0, ptr noundef %5, i32 noundef 0, i32 noundef %16, i32 noundef 1, ptr noundef %3) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %111

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %2
  %23 = tail call i32 @ipu_csi_init(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %22, i32 noundef 2, ptr noundef %3) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %108

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %2
  %29 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %2
  %32 = tail call i32 @ipu_ic_init(ptr noundef %0, ptr noundef %5, i32 noundef %28, i32 noundef %31) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %105

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %2
  %38 = tail call i32 @ipu_vdi_init(ptr noundef %0, ptr noundef %5, i32 noundef %37, i32 noundef 1073745936) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %34
  %41 = tail call i32 @ipu_image_convert_init(ptr noundef %0, ptr noundef %5) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %2
  %47 = tail call i32 @ipu_di_init(ptr noundef %0, ptr noundef %5, i32 noundef 0, i32 noundef %46, i32 noundef 64, ptr noundef %3) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 9
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %2
  %53 = tail call i32 @ipu_di_init(ptr noundef %0, ptr noundef %5, i32 noundef 1, i32 noundef %52, i32 noundef 128, ptr noundef %3) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %2, 360448
  %59 = add i32 %58, %57
  %60 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %2
  %63 = tail call i32 @ipu_dc_init(ptr noundef %0, ptr noundef %5, i32 noundef %59, i32 noundef %62) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %55
  %66 = load i32, ptr %56, align 4
  %67 = add i32 %2, 393216
  %68 = add i32 %67, %66
  %69 = tail call i32 @ipu_dmfc_init(ptr noundef %0, ptr noundef %5, i32 noundef %68, ptr noundef %3) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.ipu_devtype, ptr %7, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %2
  %75 = tail call i32 @ipu_dp_init(ptr noundef %0, ptr noundef %5, i32 noundef %74) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32, ptr %56, align 4
  %79 = add i32 %2, 327680
  %80 = add i32 %79, %78
  %81 = tail call i32 @ipu_smfc_init(ptr noundef %0, ptr noundef %5, i32 noundef %80) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %117, label %83

83:                                               ; preds = %77
  tail call void @ipu_dp_exit(ptr noundef %0) #11
  br label %84

84:                                               ; preds = %83, %71
  %85 = phi ptr [ @.str.28, %83 ], [ @.str.27, %71 ]
  %86 = phi i32 [ %81, %83 ], [ %75, %71 ]
  tail call void @ipu_dmfc_exit(ptr noundef %0) #11
  br label %87

87:                                               ; preds = %84, %65
  %88 = phi ptr [ %85, %84 ], [ @.str.26, %65 ]
  %89 = phi i32 [ %86, %84 ], [ %69, %65 ]
  tail call void @ipu_dc_exit(ptr noundef %0) #11
  br label %90

90:                                               ; preds = %87, %55
  %91 = phi ptr [ %88, %87 ], [ @.str.25, %55 ]
  %92 = phi i32 [ %89, %87 ], [ %63, %55 ]
  tail call void @ipu_di_exit(ptr noundef %0, i32 noundef 1) #11
  br label %93

93:                                               ; preds = %90, %49
  %94 = phi ptr [ %91, %90 ], [ @.str.24, %49 ]
  %95 = phi i32 [ %92, %90 ], [ %53, %49 ]
  tail call void @ipu_di_exit(ptr noundef %0, i32 noundef 0) #11
  br label %96

96:                                               ; preds = %93, %43
  %97 = phi ptr [ %94, %93 ], [ @.str.23, %43 ]
  %98 = phi i32 [ %95, %93 ], [ %47, %43 ]
  tail call void @ipu_image_convert_exit(ptr noundef %0) #11
  br label %99

99:                                               ; preds = %96, %40
  %100 = phi ptr [ %97, %96 ], [ @.str.22, %40 ]
  %101 = phi i32 [ %98, %96 ], [ %41, %40 ]
  tail call void @ipu_vdi_exit(ptr noundef %0) #11
  br label %102

102:                                              ; preds = %99, %34
  %103 = phi ptr [ %100, %99 ], [ @.str.21, %34 ]
  %104 = phi i32 [ %101, %99 ], [ %38, %34 ]
  tail call void @ipu_ic_exit(ptr noundef %0) #11
  br label %105

105:                                              ; preds = %102, %25
  %106 = phi ptr [ %103, %102 ], [ @.str.20, %25 ]
  %107 = phi i32 [ %104, %102 ], [ %32, %25 ]
  tail call void @ipu_csi_exit(ptr noundef %0, i32 noundef 1) #11
  br label %108

108:                                              ; preds = %105, %19
  %109 = phi ptr [ %106, %105 ], [ @.str.19, %19 ]
  %110 = phi i32 [ %107, %105 ], [ %23, %19 ]
  tail call void @ipu_csi_exit(ptr noundef %0, i32 noundef 0) #11
  br label %111

111:                                              ; preds = %108, %13
  %112 = phi ptr [ %109, %108 ], [ @.str.18, %13 ]
  %113 = phi i32 [ %110, %108 ], [ %17, %13 ]
  tail call void @ipu_cpmem_exit(ptr noundef %0) #11
  br label %114

114:                                              ; preds = %111, %4
  %115 = phi ptr [ %112, %111 ], [ @.str.17, %4 ]
  %116 = phi i32 [ %113, %111 ], [ %11, %4 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.29, ptr noundef %115, i32 noundef %116) #13
  br label %117

117:                                              ; preds = %114, %77
  %118 = phi i32 [ %116, %114 ], [ 0, %77 ]
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ipu_add_client_devices(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  tail call void @mutex_lock(ptr noundef nonnull @ipu_client_id_mutex) #11
  %3 = load i32, ptr @ipu_client_id, align 4
  %4 = add i32 %3, 4
  store i32 %4, ptr @ipu_client_id, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ipu_client_id_mutex) #11
  %5 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_graph_get_port_by_id(ptr noundef %6, i32 noundef 0) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef %10, ptr noundef nonnull @.str.32, i32 noundef 0) #13
  br label %26

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 0, i32 1), align 4
  %13 = add i32 %3, 1
  %14 = tail call ptr @platform_device_alloc(ptr noundef %12, i32 noundef %3) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %82, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 1
  store ptr %2, ptr %17, align 4
  store ptr %7, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 0, i32 0, i32 5), align 4
  %18 = tail call i32 @platform_device_add_data(ptr noundef nonnull %14, ptr noundef nonnull @client_reg, i32 noundef 28) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call i32 @platform_device_add(ptr noundef nonnull %14) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %77, %73, %59, %55, %40, %36, %20, %16
  %24 = phi ptr [ %14, %16 ], [ %14, %20 ], [ %34, %36 ], [ %34, %40 ], [ %53, %55 ], [ %53, %59 ], [ %71, %73 ], [ %71, %77 ]
  %25 = phi i32 [ %18, %16 ], [ %21, %20 ], [ %38, %36 ], [ %41, %40 ], [ %57, %55 ], [ %60, %59 ], [ %75, %73 ], [ %78, %77 ]
  tail call void @platform_device_put(ptr noundef nonnull %24) #11
  br label %82

26:                                               ; preds = %20, %9
  %27 = phi i32 [ %13, %20 ], [ %3, %9 ]
  %28 = load ptr, ptr %5, align 8
  %29 = tail call ptr @of_graph_get_port_by_id(ptr noundef %28, i32 noundef 1) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 1, i32 1), align 4
  %33 = add i32 %27, 1
  %34 = tail call ptr @platform_device_alloc(ptr noundef %32, i32 noundef %27) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %82, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.platform_device, ptr %34, i32 0, i32 3, i32 1
  store ptr %2, ptr %37, align 4
  store ptr %29, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 1, i32 0, i32 5), align 4
  %38 = tail call i32 @platform_device_add_data(ptr noundef nonnull %34, ptr noundef getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 1), i32 noundef 28) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %23

40:                                               ; preds = %36
  %41 = tail call i32 @platform_device_add(ptr noundef nonnull %34) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %23

43:                                               ; preds = %26
  %44 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef %44, ptr noundef nonnull @.str.32, i32 noundef 1) #13
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %33, %40 ], [ %27, %43 ]
  %47 = load ptr, ptr %5, align 8
  %48 = tail call ptr @of_graph_get_port_by_id(ptr noundef %47, i32 noundef 2) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 2, i32 1), align 4
  %52 = add i32 %46, 1
  %53 = tail call ptr @platform_device_alloc(ptr noundef %51, i32 noundef %46) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.platform_device, ptr %53, i32 0, i32 3, i32 1
  store ptr %2, ptr %56, align 4
  store ptr %48, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 2, i32 0, i32 5), align 4
  %57 = tail call i32 @platform_device_add_data(ptr noundef nonnull %53, ptr noundef getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 2), i32 noundef 28) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %23

59:                                               ; preds = %55
  %60 = tail call i32 @platform_device_add(ptr noundef nonnull %53) #11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %23

62:                                               ; preds = %45
  %63 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 2, ptr noundef %63, ptr noundef nonnull @.str.31, i32 noundef 0) #13
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %52, %59 ], [ %46, %62 ]
  %66 = load ptr, ptr %5, align 8
  %67 = tail call ptr @of_graph_get_port_by_id(ptr noundef %66, i32 noundef 3) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 3, i32 1), align 4
  %71 = tail call ptr @platform_device_alloc(ptr noundef %70, i32 noundef %65) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3, i32 1
  store ptr %2, ptr %74, align 4
  store ptr %67, ptr getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 3, i32 0, i32 5), align 4
  %75 = tail call i32 @platform_device_add_data(ptr noundef nonnull %71, ptr noundef getelementptr inbounds ([4 x %struct.ipu_platform_reg], ptr @client_reg, i32 0, i32 3), i32 noundef 28) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %23

77:                                               ; preds = %73
  %78 = tail call i32 @platform_device_add(ptr noundef nonnull %71) #11
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %23

80:                                               ; preds = %64
  %81 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef 3, ptr noundef %81, ptr noundef nonnull @.str.31, i32 noundef 1) #13
  br label %85

82:                                               ; preds = %69, %50, %31, %23, %11
  %83 = phi i32 [ %25, %23 ], [ -12, %69 ], [ -12, %50 ], [ -12, %31 ], [ -12, %11 ]
  %84 = tail call i32 @device_for_each_child(ptr noundef %2, ptr noundef null, ptr noundef nonnull @platform_remove_devices_fn) #11
  br label %85

85:                                               ; preds = %82, %80, %77
  %86 = phi i32 [ %83, %82 ], [ 0, %80 ], [ 0, %77 ]
  ret i32 %86
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipu_submodules_exit(ptr noundef %0) unnamed_addr #1 {
  tail call void @ipu_smfc_exit(ptr noundef %0) #11
  tail call void @ipu_dp_exit(ptr noundef %0) #11
  tail call void @ipu_dmfc_exit(ptr noundef %0) #11
  tail call void @ipu_dc_exit(ptr noundef %0) #11
  tail call void @ipu_di_exit(ptr noundef %0, i32 noundef 1) #11
  tail call void @ipu_di_exit(ptr noundef %0, i32 noundef 0) #11
  tail call void @ipu_image_convert_exit(ptr noundef %0) #11
  tail call void @ipu_vdi_exit(ptr noundef %0) #11
  tail call void @ipu_ic_exit(ptr noundef %0) #11
  tail call void @ipu_csi_exit(ptr noundef %0, i32 noundef 1) #11
  tail call void @ipu_csi_exit(ptr noundef %0, i32 noundef 0) #11
  tail call void @ipu_cpmem_exit(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipu_irq_exit(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %4, ptr noundef null, ptr noundef null) #11
  %5 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %6, ptr noundef null, ptr noundef null) #11
  %7 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 13
  br label %8

8:                                                ; preds = %17, %1
  %9 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %10 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !16
  %11 = call ptr @__irq_resolve_mapping(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #11
  %12 = icmp eq ptr %11, null
  %13 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  call void @irq_dispose_mapping(i32 noundef %13) #11
  br label %17

17:                                               ; preds = %16, %8
  %18 = add nuw nsw i32 %9, 1
  %19 = icmp eq i32 %18, 480
  br i1 %19, label %20, label %8

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 4
  call void @irq_domain_remove(ptr noundef %21) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_ack_set_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_irq_handler(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #11
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #11
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  tail call fastcc void @ipu_irq_handle(ptr noundef %3, ptr noundef nonnull @ipu_irq_handler.int_reg, i32 noundef 9)
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %28, %26 ], [ %24, %23 ]
  %31 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %30(ptr noundef %31) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ipu_err_irq_handler(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #11
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #11
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  tail call fastcc void @ipu_irq_handle(ptr noundef %3, ptr noundef nonnull @ipu_err_irq_handler.int_reg, i32 noundef 4)
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %28, %26 ], [ %24, %23 ]
  %31 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %30(ptr noundef %31) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ipu_irq_handle(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !16
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.ipu_soc, ptr %0, i32 0, i32 13
  br label %9

9:                                                ; preds = %38, %6
  %10 = phi i32 [ 0, %6 ], [ %39, %38 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 2
  %14 = add i32 %13, 512
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 %14
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  store i32 %17, ptr %4, align 4
  %18 = load i32, ptr %11, align 4
  %19 = shl i32 %18, 2
  %20 = add i32 %19, 60
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 %20
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !9
  %24 = load i32, ptr %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, ptr %4, align 4
  %26 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 0) #11
  %27 = icmp slt i32 %26, 32
  br i1 %27, label %28, label %38

28:                                               ; preds = %28, %9
  %29 = phi i32 [ %36, %28 ], [ %26, %9 ]
  %30 = load ptr, ptr %8, align 4
  %31 = load i32, ptr %11, align 4
  %32 = shl i32 %31, 5
  %33 = add i32 %32, %29
  %34 = call i32 @generic_handle_domain_irq(ptr noundef %30, i32 noundef %33) #11
  %35 = add nsw i32 %29, 1
  %36 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef %35) #11
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %28, label %38

38:                                               ; preds = %28, %9
  %39 = add nuw nsw i32 %10, 1
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %9

41:                                               ; preds = %38, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_cpmem_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_csi_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_ic_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_vdi_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_image_convert_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dc_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dmfc_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dp_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_smfc_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dp_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dmfc_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_di_exit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_image_convert_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_vdi_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_ic_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_csi_exit(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_cpmem_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_remove_devices_fn(ptr noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_smfc_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!8 = !{i64 3790086}
!9 = !{i64 2154944336}
!10 = !{i64 2154944695}
!11 = !{i64 3789668}
!12 = !{i64 2154943323}
!13 = !{i64 2154943685}
!14 = !{i64 2154992549}
!15 = !{i64 2154992391}
!16 = !{!"auto-init"}
!17 = !{i64 2155003453}
!18 = !{i64 2155003295}
