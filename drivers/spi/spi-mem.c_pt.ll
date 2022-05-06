; ModuleID = '/llk/IR/drivers/spi/spi-mem.c_pt.bc'
source_filename = "../drivers/spi/spi-mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_controller_dma_map_mem_op_data:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_controller_dma_map_mem_op_data\22\09\09\09\09\09"
module asm "__kstrtabns_spi_controller_dma_map_mem_op_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_controller_dma_unmap_mem_op_data:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_controller_dma_unmap_mem_op_data\22\09\09\09\09\09"
module asm "__kstrtabns_spi_controller_dma_unmap_mem_op_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_dtr_supports_op:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_dtr_supports_op\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_dtr_supports_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_default_supports_op:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_default_supports_op\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_default_supports_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_supports_op:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_supports_op\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_supports_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_exec_op:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_exec_op\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_exec_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_get_name\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_adjust_op_size:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_adjust_op_size\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_adjust_op_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_dirmap_create:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_dirmap_create\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_dirmap_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_dirmap_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_dirmap_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_dirmap_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_spi_mem_dirmap_create:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_spi_mem_dirmap_create\22\09\09\09\09\09"
module asm "__kstrtabns_devm_spi_mem_dirmap_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_spi_mem_dirmap_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_spi_mem_dirmap_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_devm_spi_mem_dirmap_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_dirmap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_dirmap_read\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_dirmap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_dirmap_write:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_dirmap_write\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_dirmap_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_poll_status:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_poll_status\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_poll_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_driver_register_with_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_driver_register_with_owner\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_driver_register_with_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_mem_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_mem_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_spi_mem_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_mem_op = type { %struct.anon.64, %struct.anon.65, %struct.anon.66, %struct.anon.67 }
%struct.anon.64 = type { i8, i8, i8, i16 }
%struct.anon.65 = type { i8, i8, i8, i64 }
%struct.anon.66 = type { i8, i8, i8 }
%struct.anon.67 = type { i8, i8, i32, i32, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_mem = type { ptr, ptr, ptr }
%struct.spi_mem_dirmap_desc = type { ptr, %struct.spi_mem_dirmap_info, i32, ptr }
%struct.spi_mem_dirmap_info = type { %struct.spi_mem_op, i64, i64 }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_spi_controller_dma_map_mem_op_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_controller_dma_map_mem_op_data = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_controller_dma_map_mem_op_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_controller_dma_map_mem_op_data to i32), ptr @__kstrtab_spi_controller_dma_map_mem_op_data, ptr @__kstrtabns_spi_controller_dma_map_mem_op_data }, section "___ksymtab_gpl+spi_controller_dma_map_mem_op_data", align 4
@__kstrtab_spi_controller_dma_unmap_mem_op_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_controller_dma_unmap_mem_op_data = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_controller_dma_unmap_mem_op_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_controller_dma_unmap_mem_op_data to i32), ptr @__kstrtab_spi_controller_dma_unmap_mem_op_data, ptr @__kstrtabns_spi_controller_dma_unmap_mem_op_data }, section "___ksymtab_gpl+spi_controller_dma_unmap_mem_op_data", align 4
@__kstrtab_spi_mem_dtr_supports_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_dtr_supports_op = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_dtr_supports_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_dtr_supports_op to i32), ptr @__kstrtab_spi_mem_dtr_supports_op, ptr @__kstrtabns_spi_mem_dtr_supports_op }, section "___ksymtab_gpl+spi_mem_dtr_supports_op", align 4
@__kstrtab_spi_mem_default_supports_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_default_supports_op = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_default_supports_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_default_supports_op to i32), ptr @__kstrtab_spi_mem_default_supports_op, ptr @__kstrtabns_spi_mem_default_supports_op }, section "___ksymtab_gpl+spi_mem_default_supports_op", align 4
@__kstrtab_spi_mem_supports_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_supports_op = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_supports_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_supports_op to i32), ptr @__kstrtab_spi_mem_supports_op, ptr @__kstrtabns_spi_mem_supports_op }, section "___ksymtab_gpl+spi_mem_supports_op", align 4
@__kstrtab_spi_mem_exec_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_exec_op = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_exec_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_exec_op to i32), ptr @__kstrtab_spi_mem_exec_op, ptr @__kstrtabns_spi_mem_exec_op }, section "___ksymtab_gpl+spi_mem_exec_op", align 4
@__kstrtab_spi_mem_get_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_get_name = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_get_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_get_name to i32), ptr @__kstrtab_spi_mem_get_name, ptr @__kstrtabns_spi_mem_get_name }, section "___ksymtab_gpl+spi_mem_get_name", align 4
@__kstrtab_spi_mem_adjust_op_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_adjust_op_size = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_adjust_op_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_adjust_op_size to i32), ptr @__kstrtab_spi_mem_adjust_op_size, ptr @__kstrtabns_spi_mem_adjust_op_size }, section "___ksymtab_gpl+spi_mem_adjust_op_size", align 4
@__kstrtab_spi_mem_dirmap_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_dirmap_create = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_dirmap_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_dirmap_create to i32), ptr @__kstrtab_spi_mem_dirmap_create, ptr @__kstrtabns_spi_mem_dirmap_create }, section "___ksymtab_gpl+spi_mem_dirmap_create", align 4
@__kstrtab_spi_mem_dirmap_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_dirmap_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_dirmap_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_dirmap_destroy to i32), ptr @__kstrtab_spi_mem_dirmap_destroy, ptr @__kstrtabns_spi_mem_dirmap_destroy }, section "___ksymtab_gpl+spi_mem_dirmap_destroy", align 4
@.str = private unnamed_addr constant [28 x i8] c"devm_spi_mem_dirmap_release\00", align 1
@__kstrtab_devm_spi_mem_dirmap_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_spi_mem_dirmap_create = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_spi_mem_dirmap_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_spi_mem_dirmap_create to i32), ptr @__kstrtab_devm_spi_mem_dirmap_create, ptr @__kstrtabns_devm_spi_mem_dirmap_create }, section "___ksymtab_gpl+devm_spi_mem_dirmap_create", align 4
@__kstrtab_devm_spi_mem_dirmap_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_spi_mem_dirmap_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_spi_mem_dirmap_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_spi_mem_dirmap_destroy to i32), ptr @__kstrtab_devm_spi_mem_dirmap_destroy, ptr @__kstrtabns_devm_spi_mem_dirmap_destroy }, section "___ksymtab_gpl+devm_spi_mem_dirmap_destroy", align 4
@__kstrtab_spi_mem_dirmap_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_dirmap_read = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_dirmap_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_dirmap_read to i32), ptr @__kstrtab_spi_mem_dirmap_read, ptr @__kstrtabns_spi_mem_dirmap_read }, section "___ksymtab_gpl+spi_mem_dirmap_read", align 4
@__kstrtab_spi_mem_dirmap_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_dirmap_write = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_dirmap_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_dirmap_write to i32), ptr @__kstrtab_spi_mem_dirmap_write, ptr @__kstrtabns_spi_mem_dirmap_write }, section "___ksymtab_gpl+spi_mem_dirmap_write", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_spi_mem_poll_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_poll_status = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_poll_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_poll_status to i32), ptr @__kstrtab_spi_mem_poll_status, ptr @__kstrtabns_spi_mem_poll_status }, section "___ksymtab_gpl+spi_mem_poll_status", align 4
@__kstrtab_spi_mem_driver_register_with_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_driver_register_with_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_driver_register_with_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_driver_register_with_owner to i32), ptr @__kstrtab_spi_mem_driver_register_with_owner, ptr @__kstrtabns_spi_mem_driver_register_with_owner }, section "___ksymtab_gpl+spi_mem_driver_register_with_owner", align 4
@__kstrtab_spi_mem_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_mem_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_mem_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_mem_driver_unregister to i32), ptr @__kstrtab_spi_mem_driver_unregister, ptr @__kstrtabns_spi_mem_driver_unregister }, section "___ksymtab_gpl+spi_mem_driver_unregister", align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to power device: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"drivers/spi/spi-mem.c\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_devm_spi_mem_dirmap_create, ptr @__ksymtab_devm_spi_mem_dirmap_destroy, ptr @__ksymtab_spi_controller_dma_map_mem_op_data, ptr @__ksymtab_spi_controller_dma_unmap_mem_op_data, ptr @__ksymtab_spi_mem_adjust_op_size, ptr @__ksymtab_spi_mem_default_supports_op, ptr @__ksymtab_spi_mem_dirmap_create, ptr @__ksymtab_spi_mem_dirmap_destroy, ptr @__ksymtab_spi_mem_dirmap_read, ptr @__ksymtab_spi_mem_dirmap_write, ptr @__ksymtab_spi_mem_driver_register_with_owner, ptr @__ksymtab_spi_mem_driver_unregister, ptr @__ksymtab_spi_mem_dtr_supports_op, ptr @__ksymtab_spi_mem_exec_op, ptr @__ksymtab_spi_mem_get_name, ptr @__ksymtab_spi_mem_poll_status, ptr @__ksymtab_spi_mem_supports_op], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_controller_dma_map_mem_op_data(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %24 [
    i32 2, label %10
    i32 1, label %17
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  br label %26

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  br label %26

24:                                               ; preds = %17, %10, %7
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  br label %26

26:                                               ; preds = %24, %21, %14
  %27 = phi ptr [ %16, %14 ], [ %23, %21 ], [ %25, %24 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq i32 %9, 1
  %34 = select i1 %33, i32 2, i32 1
  %35 = tail call i32 @spi_map_buf(ptr noundef %0, ptr noundef nonnull %28, ptr noundef %2, ptr noundef %32, i32 noundef %5, i32 noundef %34) #11
  br label %36

36:                                               ; preds = %30, %26, %3
  %37 = phi i32 [ %35, %30 ], [ -22, %3 ], [ -22, %26 ]
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_map_buf(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_controller_dma_unmap_mem_op_data(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %24 [
    i32 2, label %10
    i32 1, label %17
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  br label %26

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  br label %26

24:                                               ; preds = %17, %10, %7
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  br label %26

26:                                               ; preds = %24, %21, %14
  %27 = phi ptr [ %16, %14 ], [ %23, %21 ], [ %25, %24 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq i32 %9, 1
  %30 = select i1 %29, i32 2, i32 1
  tail call void @spi_unmap_buf(ptr noundef %0, ptr noundef %28, ptr noundef %2, i32 noundef %30) #11
  br label %31

31:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unmap_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @spi_mem_dtr_supports_op(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i8, ptr %1, align 8
  %4 = icmp eq i8 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i1 @spi_mem_check_buswidth(ptr noundef %0, ptr noundef %1)
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i1 [ %6, %5 ], [ false, %2 ]
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @spi_mem_check_buswidth(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.anon.64, ptr %1, i32 0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  switch i8 %4, label %85 [
    i8 1, label %17
    i8 2, label %8
    i8 4, label %11
    i8 8, label %14
  ]

8:                                                ; preds = %2
  %9 = and i32 %7, 8960
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %85, label %17

11:                                               ; preds = %2
  %12 = and i32 %7, 8704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %85, label %17

14:                                               ; preds = %2
  %15 = and i32 %7, 8192
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %14, %11, %8, %2
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %19 = load i8, ptr %18, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 1
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %85 [
    i8 1, label %33
    i8 2, label %24
    i8 4, label %27
    i8 8, label %30
  ]

24:                                               ; preds = %21
  %25 = and i32 %7, 8960
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %85, label %33

27:                                               ; preds = %21
  %28 = and i32 %7, 8704
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %85, label %33

30:                                               ; preds = %21
  %31 = and i32 %7, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %85, label %33

33:                                               ; preds = %30, %27, %24, %21, %17
  %34 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %35 = load i8, ptr %34, align 8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  %39 = load i8, ptr %38, align 1
  switch i8 %39, label %85 [
    i8 1, label %49
    i8 2, label %40
    i8 4, label %43
    i8 8, label %46
  ]

40:                                               ; preds = %37
  %41 = and i32 %7, 8960
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %85, label %49

43:                                               ; preds = %37
  %44 = and i32 %7, 8704
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %85, label %49

46:                                               ; preds = %37
  %47 = and i32 %7, 8192
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %85, label %49

49:                                               ; preds = %46, %43, %40, %37, %33
  %50 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %85, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i32 %51, 2
  switch i8 %55, label %85 [
    i8 1, label %84
    i8 2, label %57
    i8 4, label %66
    i8 8, label %75
  ]

57:                                               ; preds = %53
  %58 = xor i1 %56, true
  %59 = and i32 %7, 8960
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = and i32 %7, 19456
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %56, i1 true, i1 %64
  br i1 %65, label %85, label %84

66:                                               ; preds = %53
  %67 = xor i1 %56, true
  %68 = and i32 %7, 8704
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %66
  %72 = and i32 %7, 18432
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %56, i1 true, i1 %73
  br i1 %74, label %85, label %84

75:                                               ; preds = %53
  %76 = xor i1 %56, true
  %77 = and i32 %7, 8192
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = and i32 %7, 16384
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %56, i1 true, i1 %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %75, %71, %66, %62, %57, %53
  br label %85

85:                                               ; preds = %84, %80, %71, %62, %53, %49, %46, %43, %40, %37, %30, %27, %24, %21, %14, %11, %8, %2
  %86 = phi i1 [ false, %2 ], [ false, %21 ], [ false, %37 ], [ false, %53 ], [ false, %62 ], [ false, %71 ], [ false, %80 ], [ true, %84 ], [ true, %49 ], [ false, %8 ], [ false, %11 ], [ false, %14 ], [ false, %24 ], [ false, %27 ], [ false, %30 ], [ false, %40 ], [ false, %43 ], [ false, %46 ]
  ret i1 %86
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @spi_mem_default_supports_op(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.anon.64, ptr %1, i32 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 2
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8, ptr %1, align 8
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i1 @spi_mem_check_buswidth(ptr noundef %0, ptr noundef %1)
  br label %27

27:                                               ; preds = %25, %22, %17, %12, %7, %2
  %28 = phi i1 [ %26, %25 ], [ false, %17 ], [ false, %12 ], [ false, %7 ], [ false, %2 ], [ false, %22 ]
  ret i1 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @spi_mem_supports_op(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @spi_mem_check_op(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spi_controller, ptr %8, i32 0, i32 53
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i1 %14(ptr noundef %0, ptr noundef %1) #11
  br label %43

18:                                               ; preds = %12, %5
  %19 = getelementptr inbounds %struct.anon.64, ptr %1, i32 0, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 2
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8, ptr %1, align 8
  %40 = icmp eq i8 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call fastcc zeroext i1 @spi_mem_check_buswidth(ptr noundef %0, ptr noundef %1) #11
  br label %43

43:                                               ; preds = %41, %38, %33, %28, %23, %18, %16, %2
  %44 = phi i1 [ false, %2 ], [ %17, %16 ], [ %42, %41 ], [ false, %33 ], [ false, %28 ], [ false, %23 ], [ false, %18 ], [ false, %38 ]
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_mem_check_op(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.64, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 1, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 2
  %18 = load i8, ptr %17, align 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 2, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 3
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 3, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i8, ptr %25, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %29, %24
  %33 = zext i8 %3 to i32
  %34 = tail call i32 @__sw_hweight8(i32 noundef %33) #11
  %35 = icmp ult i32 %34, 2
  %36 = icmp ult i8 %3, 9
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 1, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = tail call i32 @__sw_hweight8(i32 noundef %41) #11
  %43 = icmp ult i32 %42, 2
  %44 = icmp ult i8 %40, 9
  %45 = and i1 %44, %43
  br i1 %45, label %46, label %62

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.spi_mem_op, ptr %0, i32 0, i32 2, i32 1
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = tail call i32 @__sw_hweight8(i32 noundef %49) #11
  %51 = icmp ult i32 %50, 2
  %52 = icmp ult i8 %48, 9
  %53 = and i1 %52, %51
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i8, ptr %25, align 4
  %56 = zext i8 %55 to i32
  %57 = tail call i32 @__sw_hweight8(i32 noundef %56) #11
  %58 = icmp ult i32 %57, 2
  %59 = icmp ult i8 %55, 9
  %60 = and i1 %59, %58
  %61 = select i1 %60, i32 0, i32 -22
  br label %62

62:                                               ; preds = %54, %46, %38, %32, %29, %20, %12, %5, %1
  %63 = phi i32 [ -22, %5 ], [ -22, %1 ], [ -22, %29 ], [ -22, %20 ], [ -22, %12 ], [ -22, %46 ], [ -22, %38 ], [ -22, %32 ], [ %61, %54 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_mem_exec_op(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4 x %struct.spi_transfer], align 4
  %4 = alloca %struct.spi_message, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(384) %3, i8 0, i32 384, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  %8 = tail call fastcc i32 @spi_mem_check_op(ptr noundef %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %214

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.spi_controller, ptr %13, i32 0, i32 53
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i1 %19(ptr noundef %0, ptr noundef %1) #11
  br i1 %22, label %48, label %214

23:                                               ; preds = %17, %10
  %24 = getelementptr inbounds %struct.anon.64, ptr %1, i32 0, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %214

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 2
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %214

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 2
  %35 = load i8, ptr %34, align 2
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %214

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %214

43:                                               ; preds = %38
  %44 = load i8, ptr %1, align 8
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %46, label %214

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i1 @spi_mem_check_buswidth(ptr noundef %0, ptr noundef %1) #11
  br i1 %47, label %48, label %214

48:                                               ; preds = %46, %21
  %49 = getelementptr inbounds %struct.spi_controller, ptr %7, i32 0, i32 53
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.spi_device, ptr %53, i32 0, i32 14
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = tail call fastcc i32 @spi_mem_access_start(ptr noundef %0)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %214

60:                                               ; preds = %57
  %61 = load ptr, ptr %49, align 4
  %62 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %0, ptr noundef %1) #11
  tail call fastcc void @spi_mem_access_end(ptr noundef %0)
  %65 = icmp eq i32 %64, -524
  br i1 %65, label %66, label %214

66:                                               ; preds = %60, %52, %48
  %67 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %68 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %69 = load i8, ptr %67, align 8
  %70 = zext i8 %69 to i32
  %71 = load i8, ptr %1, align 8
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %70, %72
  %74 = load i8, ptr %68, align 8
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %73, %75
  %77 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %76, i32 noundef 3521) #12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %214, label %79

79:                                               ; preds = %66
  %80 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %80, i8 0, i32 40, i1 false) #11
  store volatile ptr %4, ptr %4, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %82 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10
  store volatile ptr %82, ptr %82, align 4
  %83 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 10, i32 1
  store ptr %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.anon.64, ptr %1, i32 0, i32 3
  %85 = load i16, ptr %84, align 4
  %86 = trunc i16 %85 to i8
  store i8 %86, ptr %77, align 64
  store ptr %77, ptr %3, align 4
  %87 = load i8, ptr %1, align 8
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  store i32 %88, ptr %89, align 4
  %90 = getelementptr inbounds %struct.anon.64, ptr %1, i32 0, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 7
  %93 = load i8, ptr %92, align 4
  %94 = shl i8 %91, 2
  %95 = and i8 %94, 28
  %96 = and i8 %93, -29
  %97 = or i8 %96, %95
  store i8 %97, ptr %92, align 4
  %98 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18
  store ptr %98, ptr %81, align 4
  store ptr %4, ptr %98, align 4
  %99 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 18, i32 1
  store ptr %4, ptr %99, align 4
  store volatile ptr %98, ptr %4, align 4
  %100 = load i8, ptr %67, align 8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %137, label %102

102:                                              ; preds = %79
  %103 = zext i8 %100 to i32
  %104 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 3
  %105 = load i64, ptr %104, align 8
  %106 = load i8, ptr %67, align 8
  %107 = zext i8 %106 to i32
  br label %108

108:                                              ; preds = %108, %102
  %109 = phi i32 [ %103, %102 ], [ %107, %108 ]
  %110 = phi i32 [ 0, %102 ], [ %117, %108 ]
  %111 = xor i32 %110, -1
  %112 = add nsw i32 %109, %111
  %113 = shl i32 %112, 3
  %114 = zext i32 %113 to i64
  %115 = lshr i64 %105, %114
  %116 = trunc i64 %115 to i8
  %117 = add nuw nsw i32 %110, 1
  %118 = getelementptr i8, ptr %77, i32 %117
  store i8 %116, ptr %118, align 1
  %119 = icmp ult i32 %117, %107
  br i1 %119, label %108, label %120

120:                                              ; preds = %108
  %121 = zext i8 %106 to i32
  %122 = getelementptr i8, ptr %77, i32 1
  %123 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %3, i32 0, i32 1
  store ptr %122, ptr %123, align 4
  %124 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 2
  store i32 %121, ptr %124, align 4
  %125 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 7
  %128 = load i8, ptr %127, align 4
  %129 = shl i8 %126, 2
  %130 = and i8 %129, 28
  %131 = and i8 %128, -29
  %132 = or i8 %131, %130
  store i8 %132, ptr %127, align 4
  %133 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 18
  store ptr %133, ptr %81, align 4
  store ptr %4, ptr %133, align 4
  %134 = getelementptr inbounds [4 x %struct.spi_transfer], ptr %3, i32 0, i32 1, i32 18, i32 1
  store ptr %98, ptr %134, align 4
  store volatile ptr %133, ptr %98, align 4
  %135 = add nuw nsw i32 %121, 1
  %136 = zext i8 %106 to i32
  br label %137

137:                                              ; preds = %120, %79
  %138 = phi i32 [ %136, %120 ], [ 0, %79 ]
  %139 = phi i32 [ 2, %120 ], [ 1, %79 ]
  %140 = phi i32 [ %135, %120 ], [ 1, %79 ]
  %141 = load i8, ptr %68, align 8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %167, label %143

143:                                              ; preds = %137
  %144 = getelementptr i8, ptr %77, i32 %138
  %145 = getelementptr i8, ptr %144, i32 1
  %146 = zext i8 %141 to i32
  call void @llvm.memset.p0.i32(ptr align 1 %145, i8 -1, i32 %146, i1 false)
  %147 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %139
  store ptr %145, ptr %147, align 4
  %148 = load i8, ptr %68, align 8
  %149 = zext i8 %148 to i32
  %150 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %139, i32 2
  store i32 %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 1
  %152 = load i8, ptr %151, align 1
  %153 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %139, i32 7
  %154 = load i8, ptr %153, align 4
  %155 = shl i8 %152, 2
  %156 = and i8 %155, 28
  %157 = and i8 %154, -30
  %158 = or i8 %156, %157
  %159 = or i8 %158, 1
  store i8 %159, ptr %153, align 4
  %160 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %139, i32 18
  %161 = load ptr, ptr %81, align 4
  store ptr %160, ptr %81, align 4
  store ptr %4, ptr %160, align 4
  %162 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %139, i32 18, i32 1
  store ptr %161, ptr %162, align 4
  store volatile ptr %160, ptr %161, align 4
  %163 = add nuw nsw i32 %139, 1
  %164 = load i8, ptr %68, align 8
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %140, %165
  br label %167

167:                                              ; preds = %143, %137
  %168 = phi i32 [ %163, %143 ], [ %139, %137 ]
  %169 = phi i32 [ %166, %143 ], [ %140, %137 ]
  %170 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3
  %171 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %204, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 1
  %178 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %179 = load ptr, ptr %178, align 4
  br i1 %177, label %180, label %188

180:                                              ; preds = %174
  %181 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %168, i32 1
  store ptr %179, ptr %181, align 4
  %182 = load i8, ptr %170, align 4
  %183 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %168, i32 7
  %184 = load i8, ptr %183, align 4
  %185 = shl i8 %182, 5
  %186 = and i8 %184, 31
  %187 = or i8 %186, %185
  store i8 %187, ptr %183, align 4
  br label %197

188:                                              ; preds = %174
  %189 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %168
  store ptr %179, ptr %189, align 4
  %190 = load i8, ptr %170, align 4
  %191 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %168, i32 7
  %192 = load i8, ptr %191, align 4
  %193 = shl i8 %190, 2
  %194 = and i8 %193, 28
  %195 = and i8 %192, -29
  %196 = or i8 %195, %194
  store i8 %196, ptr %191, align 4
  br label %197

197:                                              ; preds = %188, %180
  %198 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %168, i32 2
  store i32 %172, ptr %198, align 4
  %199 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %168, i32 18
  %200 = load ptr, ptr %81, align 4
  store ptr %199, ptr %81, align 4
  store ptr %4, ptr %199, align 4
  %201 = getelementptr [4 x %struct.spi_transfer], ptr %3, i32 0, i32 %168, i32 18, i32 1
  store ptr %200, ptr %201, align 4
  store volatile ptr %199, ptr %200, align 4
  %202 = load i32, ptr %171, align 4
  %203 = add i32 %202, %169
  br label %204

204:                                              ; preds = %197, %167
  %205 = phi i32 [ %203, %197 ], [ %169, %167 ]
  %206 = load ptr, ptr %0, align 4
  %207 = call i32 @spi_sync(ptr noundef %206, ptr noundef nonnull %4) #11
  call void @kfree(ptr noundef nonnull %77) #11
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 6
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, %205
  %213 = select i1 %212, i32 0, i32 -5
  br label %214

214:                                              ; preds = %209, %204, %66, %60, %57, %46, %43, %38, %33, %28, %23, %21, %2
  %215 = phi i32 [ %8, %2 ], [ -524, %46 ], [ %58, %57 ], [ %64, %60 ], [ -12, %66 ], [ %207, %204 ], [ %213, %209 ], [ -524, %21 ], [ -524, %38 ], [ -524, %33 ], [ -524, %28 ], [ -524, %23 ], [ -524, %43 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #11
  ret i32 %215
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_mem_access_start(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.spi_device, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  tail call void @spi_flush_queue(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 36
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #11, !srcloc !10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 0, i32 -1, ptr elementtype(i32) %15) #11, !srcloc !11
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  br label %20

20:                                               ; preds = %19, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %11) #13
  br label %24

21:                                               ; preds = %8, %1
  %22 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %22) #11
  %23 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %23) #11
  br label %24

24:                                               ; preds = %21, %20
  %25 = phi i32 [ 0, %21 ], [ %11, %20 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @spi_mem_access_end(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.spi_device, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.spi_controller, ptr %4, i32 0, i32 36
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #11
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @spi_mem_get_name(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.spi_mem, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_mem_adjust_op_size(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 53
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #11
  br label %81

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %80

18:                                               ; preds = %14, %2
  %19 = load i8, ptr %1, align 8
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %22 = load i8, ptr %21, align 8
  %23 = zext i8 %22 to i32
  %24 = add nuw nsw i32 %23, %20
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2
  %26 = load i8, ptr %25, align 8
  %27 = zext i8 %26 to i32
  %28 = add nuw nsw i32 %24, %27
  %29 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %18
  %33 = tail call i32 %30(ptr noundef %3) #11
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi i32 [ %33, %32 ], [ -1, %18 ]
  %36 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 13
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = tail call i32 %37(ptr noundef %3) #11
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %40, %39 ], [ -1, %34 ]
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %35) #11
  %44 = icmp ugt i32 %28, %43
  br i1 %44, label %81, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.spi_device, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.spi_controller, ptr %50, i32 0, i32 14
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = tail call i32 %52(ptr noundef %48) #11
  br label %56

56:                                               ; preds = %54, %45
  %57 = phi i32 [ %55, %54 ], [ -1, %45 ]
  %58 = getelementptr inbounds %struct.spi_controller, ptr %50, i32 0, i32 13
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = tail call i32 %59(ptr noundef %48) #11
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i32 [ %62, %61 ], [ -1, %56 ]
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %57) #11
  %66 = tail call i32 @llvm.umin.i32(i32 %47, i32 %65)
  %67 = load ptr, ptr %0, align 4
  %68 = getelementptr inbounds %struct.spi_device, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.spi_controller, ptr %69, i32 0, i32 14
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %63
  %74 = tail call i32 %71(ptr noundef %67) #11
  br label %75

75:                                               ; preds = %73, %63
  %76 = phi i32 [ %74, %73 ], [ -1, %63 ]
  %77 = sub i32 %76, %28
  %78 = tail call i32 @llvm.umin.i32(i32 %66, i32 %77)
  store i32 %78, ptr %46, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75, %14
  br label %81

81:                                               ; preds = %80, %75, %41, %12
  %82 = phi i32 [ %13, %12 ], [ 0, %80 ], [ -22, %41 ], [ -22, %75 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @spi_mem_dirmap_create(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1
  %7 = load i8, ptr %6, align 8
  %8 = add i8 %7, -9
  %9 = icmp ult i8 %8, -8
  br i1 %9, label %76, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %76, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 80) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %76, label %18

18:                                               ; preds = %14
  store ptr %0, ptr %16, align 8
  %19 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %16, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %19, ptr noundef align 8 dereferenceable(64) %1, i32 64, i1 false)
  %20 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 53
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %21, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef nonnull %16) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %76, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 8
  br label %32

32:                                               ; preds = %30, %23, %18
  %33 = phi ptr [ %31, %30 ], [ %0, %18 ], [ %0, %23 ]
  %34 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %16, i32 0, i32 2
  store i32 1, ptr %34, align 8
  %35 = tail call fastcc i32 @spi_mem_check_op(ptr noundef %19) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = load ptr, ptr %33, align 4
  %39 = getelementptr inbounds %struct.spi_device, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.spi_controller, ptr %40, i32 0, i32 53
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call zeroext i1 %46(ptr noundef %33, ptr noundef %19) #11
  br i1 %49, label %76, label %75

50:                                               ; preds = %44, %37
  %51 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %16, i32 0, i32 1, i32 0, i32 0, i32 2
  %52 = load i8, ptr %51, align 2
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %16, i32 0, i32 1, i32 0, i32 1, i32 2
  %57 = load i8, ptr %56, align 2
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %16, i32 0, i32 1, i32 0, i32 2, i32 2
  %62 = load i8, ptr %61, align 2
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %16, i32 0, i32 1, i32 0, i32 3, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8, ptr %19, align 8
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = tail call fastcc zeroext i1 @spi_mem_check_buswidth(ptr noundef %33, ptr noundef %19) #11
  br i1 %74, label %76, label %75

75:                                               ; preds = %73, %70, %65, %60, %55, %50, %48, %32
  tail call void @kfree(ptr noundef nonnull %16) #11
  br label %76

76:                                               ; preds = %75, %73, %48, %27, %14, %10, %2
  %77 = phi ptr [ inttoptr (i32 -524 to ptr), %75 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -12 to ptr), %14 ], [ %16, %27 ], [ %16, %48 ], [ %16, %73 ]
  ret ptr %77
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_mem_dirmap_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 53
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %11, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef %0) #11
  br label %18

18:                                               ; preds = %17, %13, %5, %1
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_spi_mem_dirmap_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_spi_mem_dirmap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @spi_mem_dirmap_create(ptr noundef %1, ptr noundef %2)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #11
  br label %11

10:                                               ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #11
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ %7, %10 ], [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_spi_mem_dirmap_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 53
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %3) #11
  br label %20

20:                                               ; preds = %19, %15, %7, %2
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_spi_mem_dirmap_destroy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_spi_mem_dirmap_release, ptr noundef nonnull @devm_spi_mem_dirmap_match, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_spi_mem_dirmap_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 627, i32 noundef 9, ptr noundef null) #11
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 0, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_mem_dirmap_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.spi_mem_op, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1, i32 0, i32 3, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %54

13:                                               ; preds = %4
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #11
  %20 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef align 8 dereferenceable(48) %20, i32 48, i1 false) #11
  %21 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, %1
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 3
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 4
  store ptr %3, ptr %25, align 8
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 3
  store i32 %2, ptr %26, align 4
  %27 = call i32 @spi_mem_adjust_op_size(ptr noundef %6, ptr noundef nonnull %5) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load ptr, ptr %0, align 8
  %31 = call i32 @spi_mem_exec_op(ptr noundef %30, ptr noundef nonnull %5) #11
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %26, align 4
  %34 = select i1 %32, i32 %33, i32 %31
  br label %35

35:                                               ; preds = %29, %19
  %36 = phi i32 [ %27, %19 ], [ %34, %29 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #11
  br label %54

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 53
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %39, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @spi_mem_access_start(ptr noundef %6)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #11
  %53 = load ptr, ptr %0, align 8
  tail call fastcc void @spi_mem_access_end(ptr noundef %53)
  br label %54

54:                                               ; preds = %48, %45, %41, %37, %35, %13, %4
  %55 = phi i32 [ -22, %4 ], [ 0, %13 ], [ %46, %45 ], [ %36, %35 ], [ %52, %48 ], [ -524, %41 ], [ -524, %37 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_mem_dirmap_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.spi_mem_op, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1, i32 0, i32 3, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %54

13:                                               ; preds = %4
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #11
  %20 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef align 8 dereferenceable(48) %20, i32 48, i1 false) #11
  %21 = getelementptr inbounds %struct.spi_mem_dirmap_desc, ptr %0, i32 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %22, %1
  %24 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 1, i32 3
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 4
  store ptr %3, ptr %25, align 8
  %26 = getelementptr inbounds %struct.spi_mem_op, ptr %5, i32 0, i32 3, i32 3
  store i32 %2, ptr %26, align 4
  %27 = call i32 @spi_mem_adjust_op_size(ptr noundef %6, ptr noundef nonnull %5) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load ptr, ptr %0, align 8
  %31 = call i32 @spi_mem_exec_op(ptr noundef %30, ptr noundef nonnull %5) #11
  %32 = icmp eq i32 %31, 0
  %33 = load i32, ptr %26, align 4
  %34 = select i1 %32, i32 %33, i32 %31
  br label %35

35:                                               ; preds = %29, %19
  %36 = phi i32 [ %27, %19 ], [ %34, %29 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #11
  br label %54

37:                                               ; preds = %15
  %38 = getelementptr inbounds %struct.spi_controller, ptr %9, i32 0, i32 53
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %39, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @spi_mem_access_start(ptr noundef %6)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %49, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 %51(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #11
  %53 = load ptr, ptr %0, align 8
  tail call fastcc void @spi_mem_access_end(ptr noundef %53)
  br label %54

54:                                               ; preds = %48, %45, %41, %37, %35, %13, %4
  %55 = phi i32 [ -22, %4 ], [ 0, %13 ], [ %46, %45 ], [ %36, %35 ], [ %52, %48 ], [ -524, %41 ], [ -524, %37 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_mem_poll_status(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i16 noundef zeroext %6) #0 {
  %8 = alloca i16, align 2
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  %12 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -3
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %150, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %150

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 53
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %22, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @spi_mem_access_start(ptr noundef %0)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %150

31:                                               ; preds = %28
  %32 = load ptr, ptr %21, align 4
  %33 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %32, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = zext i16 %6 to i32
  %36 = tail call i32 %34(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %35) #11
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.spi_device, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.spi_controller, ptr %39, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %40) #11
  %41 = getelementptr inbounds %struct.spi_controller, ptr %39, i32 0, i32 18
  tail call void @mutex_unlock(ptr noundef %41) #11
  %42 = getelementptr inbounds %struct.spi_controller, ptr %39, i32 0, i32 36
  %43 = load i8, ptr %42, align 4, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @__pm_runtime_idle(ptr noundef %47, i32 noundef 5) #11
  br label %49

49:                                               ; preds = %45, %31
  %50 = icmp eq i32 %36, -95
  br i1 %50, label %51, label %148

51:                                               ; preds = %49, %24, %20
  %52 = tail call fastcc i32 @spi_mem_check_op(ptr noundef %1) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %150

54:                                               ; preds = %51
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.spi_device, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.spi_controller, ptr %57, i32 0, i32 53
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %59, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call zeroext i1 %63(ptr noundef %0, ptr noundef %1) #11
  br i1 %66, label %92, label %150

67:                                               ; preds = %61, %54
  %68 = getelementptr inbounds %struct.anon.64, ptr %1, i32 0, i32 2
  %69 = load i8, ptr %68, align 2
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %150

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 1, i32 2
  %74 = load i8, ptr %73, align 2
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %150

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 2, i32 2
  %79 = load i8, ptr %78, align 2
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %150

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %82
  %88 = load i8, ptr %1, align 8
  %89 = icmp eq i8 %88, 1
  br i1 %89, label %90, label %150

90:                                               ; preds = %87
  %91 = tail call fastcc zeroext i1 @spi_mem_check_buswidth(ptr noundef %0, ptr noundef %1) #11
  br i1 %91, label %92, label %150

92:                                               ; preds = %90, %65
  %93 = icmp ult i32 %4, 10
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %4) #11
  br label %99

96:                                               ; preds = %92
  %97 = lshr i32 %4, 2
  %98 = add nuw nsw i32 %97, 1
  tail call void @usleep_range_state(i32 noundef %98, i32 noundef %4, i32 noundef 2) #11
  br label %99

99:                                               ; preds = %96, %94
  %100 = zext i16 %6 to i32
  %101 = mul nuw nsw i32 %100, 1000
  %102 = zext i32 %101 to i64
  %103 = tail call i64 @ktime_get() #11
  %104 = mul nuw nsw i64 %102, 1000
  %105 = add i64 %103, %104
  %106 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @spi_mem_exec_op(ptr noundef %0, ptr noundef %1) #11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %150

110:                                              ; preds = %99
  %111 = icmp eq i16 %6, 0
  %112 = icmp eq i32 %5, 0
  %113 = lshr i32 %5, 2
  %114 = add nuw nsw i32 %113, 1
  br label %115

115:                                              ; preds = %137, %110
  %116 = phi ptr [ %107, %110 ], [ %138, %137 ]
  %117 = load i32, ptr %12, align 4
  %118 = icmp ugt i32 %117, 1
  %119 = load i8, ptr %116, align 1
  %120 = zext i8 %119 to i16
  br i1 %118, label %121, label %127

121:                                              ; preds = %115
  %122 = shl nuw i16 %120, 8
  %123 = getelementptr i8, ptr %116, i32 1
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i16
  %126 = or i16 %122, %125
  br label %127

127:                                              ; preds = %121, %115
  %128 = phi i16 [ %126, %121 ], [ %120, %115 ]
  %129 = and i16 %128, %2
  %130 = icmp eq i16 %129, %3
  br i1 %130, label %148, label %131

131:                                              ; preds = %127
  br i1 %111, label %135, label %132

132:                                              ; preds = %131
  %133 = tail call i64 @ktime_get() #11
  %134 = icmp sgt i64 %133, %105
  br i1 %134, label %141, label %135

135:                                              ; preds = %132, %131
  br i1 %112, label %137, label %136

136:                                              ; preds = %135
  tail call void @usleep_range_state(i32 noundef %114, i32 noundef %5, i32 noundef 2) #11
  br label %137

137:                                              ; preds = %136, %135
  %138 = load ptr, ptr %106, align 4
  %139 = tail call i32 @spi_mem_exec_op(ptr noundef %0, ptr noundef %1) #11
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %115, label %150

141:                                              ; preds = %132
  store i16 %128, ptr %8, align 2
  %142 = call fastcc i32 @spi_mem_read_status(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8)
  %143 = icmp eq i32 %142, 0
  %144 = load i16, ptr %8, align 2
  %145 = and i16 %144, %2
  %146 = icmp eq i16 %145, %3
  %147 = select i1 %146, i32 0, i32 -110
  br i1 %143, label %148, label %150

148:                                              ; preds = %141, %127, %49
  %149 = phi i32 [ %147, %141 ], [ %36, %49 ], [ 0, %127 ]
  br label %150

150:                                              ; preds = %148, %141, %137, %99, %90, %87, %82, %77, %72, %67, %65, %51, %28, %16, %7
  %151 = phi i32 [ %149, %148 ], [ -22, %16 ], [ -22, %7 ], [ %29, %28 ], [ -95, %90 ], [ %142, %141 ], [ -95, %65 ], [ -95, %51 ], [ -95, %82 ], [ -95, %77 ], [ -95, %72 ], [ -95, %67 ], [ -95, %87 ], [ %108, %99 ], [ %139, %137 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  ret i32 %151
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @spi_mem_read_status(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @spi_mem_exec_op(ptr noundef %0, ptr noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.spi_mem_op, ptr %1, i32 0, i32 3, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 1
  %12 = load i8, ptr %5, align 1
  %13 = zext i8 %12 to i16
  br i1 %11, label %14, label %20

14:                                               ; preds = %8
  %15 = shl nuw i16 %13, 8
  %16 = getelementptr i8, ptr %5, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  %19 = or i16 %15, %18
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i16 [ %19, %14 ], [ %13, %8 ]
  store i16 %21, ptr %2, align 2
  br label %22

22:                                               ; preds = %20, %3
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spi_mem_driver_register_with_owner(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.spi_driver, ptr %0, i32 0, i32 1
  store ptr @spi_mem_probe, ptr %3, align 4
  %4 = getelementptr inbounds %struct.spi_driver, ptr %0, i32 0, i32 2
  store ptr @spi_mem_remove, ptr %4, align 4
  %5 = getelementptr inbounds %struct.spi_driver, ptr %0, i32 0, i32 3
  store ptr @spi_mem_shutdown, ptr %5, align 4
  %6 = tail call i32 @__spi_register_driver(ptr noundef %1, ptr noundef %0) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_mem_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.spi_controller, ptr %5, i32 0, i32 53
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.spi_controller_mem_ops, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr %14(ptr noundef nonnull %6) #11
  br label %24

18:                                               ; preds = %12, %8
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  br label %24

24:                                               ; preds = %22, %18, %16
  %25 = phi ptr [ %17, %16 ], [ %23, %22 ], [ %20, %18 ]
  %26 = getelementptr inbounds %struct.spi_mem, ptr %6, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  %28 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = ptrtoint ptr %25 to i32
  %32 = select i1 %28, i32 %31, i32 0
  br label %38

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %6, ptr %34, align 8
  %35 = getelementptr i8, ptr %3, i32 76
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef nonnull %6) #11
  br label %38

38:                                               ; preds = %33, %30, %1
  %39 = phi i32 [ %32, %30 ], [ %37, %33 ], [ -12, %1 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spi_mem_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 80
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 %5(ptr noundef %9) #11
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spi_mem_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 84
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  tail call void %5(ptr noundef %9) #11
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spi_mem_driver_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.spi_driver, ptr %0, i32 0, i32 4
  tail call void @driver_unregister(ptr noundef %4) #11
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_flush_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!9 = !{i64 2148214871}
!10 = !{i64 650536, i64 2148152102, i64 2148152128, i64 2148152175, i64 2148152197, i64 2148152225, i64 2148152245}
!11 = !{i64 637105, i64 637130, i64 637152, i64 637168, i64 637180, i64 637200, i64 637224, i64 637240, i64 637252}
!12 = !{i64 2148214997}
!13 = !{!"branch_weights", i32 1, i32 2000}
