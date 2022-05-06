; ModuleID = '/llk/IR/drivers/base/platform.c_pt.bc'
source_filename = "../drivers/base/platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_bus\22\09\09\09\09\09"
module asm "__kstrtabns_platform_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_resource\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_mem_or_io:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_mem_or_io\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_mem_or_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_platform_get_and_ioremap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_platform_get_and_ioremap_resource\22\09\09\09\09\09"
module asm "__kstrtabns_devm_platform_get_and_ioremap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_platform_ioremap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_platform_ioremap_resource\22\09\09\09\09\09"
module asm "__kstrtabns_devm_platform_ioremap_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_platform_ioremap_resource_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_platform_ioremap_resource_byname\22\09\09\09\09\09"
module asm "__kstrtabns_devm_platform_ioremap_resource_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_irq_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_irq_optional\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_irq_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_irq\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_irq_count:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_irq_count\22\09\09\09\09\09"
module asm "__kstrtabns_platform_irq_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_platform_get_irqs_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_platform_get_irqs_affinity\22\09\09\09\09\09"
module asm "__kstrtabns_devm_platform_get_irqs_affinity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_resource_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_resource_byname\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_resource_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_irq_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_irq_byname\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_irq_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_get_irq_byname_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_get_irq_byname_optional\22\09\09\09\09\09"
module asm "__kstrtabns_platform_get_irq_byname_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_add_devices\22\09\09\09\09\09"
module asm "__kstrtabns_platform_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_put\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_add_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_add_resources\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_add_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_add_data:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_add_data\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_add_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_del\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_device_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_device_register_full\22\09\09\09\09\09"
module asm "__kstrtabns_platform_device_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___platform_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__platform_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___platform_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_platform_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___platform_driver_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22__platform_driver_probe\22\09\09\09\09\09"
module asm "__kstrtabns___platform_driver_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___platform_create_bundle:\09\09\09\09\09"
module asm "\09.asciz \09\22__platform_create_bundle\22\09\09\09\09\09"
module asm "__kstrtabns___platform_create_bundle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___platform_register_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22__platform_register_drivers\22\09\09\09\09\09"
module asm "__kstrtabns___platform_register_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_unregister_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_unregister_drivers\22\09\09\09\09\09"
module asm "__kstrtabns_platform_unregister_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_platform_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_find_device_by_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_find_device_by_driver\22\09\09\09\09\09"
module asm "__kstrtabns_platform_find_device_by_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_affinity_devres = type { i32, [0 x i32] }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%struct.cpumask = type { [1 x i32] }
%struct.platform_object = type { %struct.platform_device, [0 x i8] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, %struct.kset, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.platform_device_id = type { [20 x i8], i32 }

@.str = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@platform_bus = dso_local global %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, align 8
@__kstrtab_platform_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_bus to i32), ptr @__kstrtab_platform_bus, ptr @__kstrtabns_platform_bus }, section "___ksymtab_gpl+platform_bus", align 4
@__kstrtab_platform_get_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_resource to i32), ptr @__kstrtab_platform_get_resource, ptr @__kstrtabns_platform_get_resource }, section "___ksymtab_gpl+platform_get_resource", align 4
@__kstrtab_platform_get_mem_or_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_mem_or_io = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_mem_or_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_mem_or_io to i32), ptr @__kstrtab_platform_get_mem_or_io, ptr @__kstrtabns_platform_get_mem_or_io }, section "___ksymtab_gpl+platform_get_mem_or_io", align 4
@__kstrtab_devm_platform_get_and_ioremap_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_platform_get_and_ioremap_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_platform_get_and_ioremap_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_platform_get_and_ioremap_resource to i32), ptr @__kstrtab_devm_platform_get_and_ioremap_resource, ptr @__kstrtabns_devm_platform_get_and_ioremap_resource }, section "___ksymtab_gpl+devm_platform_get_and_ioremap_resource", align 4
@__kstrtab_devm_platform_ioremap_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_platform_ioremap_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_platform_ioremap_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_platform_ioremap_resource to i32), ptr @__kstrtab_devm_platform_ioremap_resource, ptr @__kstrtabns_devm_platform_ioremap_resource }, section "___ksymtab_gpl+devm_platform_ioremap_resource", align 4
@__kstrtab_devm_platform_ioremap_resource_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_platform_ioremap_resource_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_platform_ioremap_resource_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_platform_ioremap_resource_byname to i32), ptr @__kstrtab_devm_platform_ioremap_resource_byname, ptr @__kstrtabns_devm_platform_ioremap_resource_byname }, section "___ksymtab_gpl+devm_platform_ioremap_resource_byname", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"drivers/base/platform.c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"0 is an invalid IRQ number\0A\00", align 1
@__kstrtab_platform_get_irq_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_irq_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_irq_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_irq_optional to i32), ptr @__kstrtab_platform_get_irq_optional, ptr @__kstrtabns_platform_get_irq_optional }, section "___ksymtab_gpl+platform_get_irq_optional", align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"IRQ index %u not found\0A\00", align 1
@__kstrtab_platform_get_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_irq to i32), ptr @__kstrtab_platform_get_irq, ptr @__kstrtabns_platform_get_irq }, section "___ksymtab_gpl+platform_get_irq", align 4
@__kstrtab_platform_irq_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_irq_count = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_irq_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_irq_count to i32), ptr @__kstrtab_platform_irq_count, ptr @__kstrtabns_platform_irq_count }, section "___ksymtab_gpl+platform_irq_count", align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"devm_platform_get_irqs_affinity_release\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"failed to update irq%d affinity descriptor (%d)\0A\00", align 1
@__kstrtab_devm_platform_get_irqs_affinity = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_platform_get_irqs_affinity = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_platform_get_irqs_affinity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_platform_get_irqs_affinity to i32), ptr @__kstrtab_devm_platform_get_irqs_affinity, ptr @__kstrtabns_devm_platform_get_irqs_affinity }, section "___ksymtab_gpl+devm_platform_get_irqs_affinity", align 4
@__kstrtab_platform_get_resource_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_resource_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_resource_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_resource_byname to i32), ptr @__kstrtab_platform_get_resource_byname, ptr @__kstrtabns_platform_get_resource_byname }, section "___ksymtab_gpl+platform_get_resource_byname", align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"IRQ %s not found\0A\00", align 1
@__kstrtab_platform_get_irq_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_irq_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_irq_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_irq_byname to i32), ptr @__kstrtab_platform_get_irq_byname, ptr @__kstrtabns_platform_get_irq_byname }, section "___ksymtab_gpl+platform_get_irq_byname", align 4
@__kstrtab_platform_get_irq_byname_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_get_irq_byname_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_get_irq_byname_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_get_irq_byname_optional to i32), ptr @__kstrtab_platform_get_irq_byname_optional, ptr @__kstrtabns_platform_get_irq_byname_optional }, section "___ksymtab_gpl+platform_get_irq_byname_optional", align 4
@__kstrtab_platform_add_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_add_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_add_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_add_devices to i32), ptr @__kstrtab_platform_add_devices, ptr @__kstrtabns_platform_add_devices }, section "___ksymtab_gpl+platform_add_devices", align 4
@__kstrtab_platform_device_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_put = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_put to i32), ptr @__kstrtab_platform_device_put, ptr @__kstrtabns_platform_device_put }, section "___ksymtab_gpl+platform_device_put", align 4
@__kstrtab_platform_device_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_alloc to i32), ptr @__kstrtab_platform_device_alloc, ptr @__kstrtabns_platform_device_alloc }, section "___ksymtab_gpl+platform_device_alloc", align 4
@__kstrtab_platform_device_add_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_add_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_add_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_add_resources to i32), ptr @__kstrtab_platform_device_add_resources, ptr @__kstrtabns_platform_device_add_resources }, section "___ksymtab_gpl+platform_device_add_resources", align 4
@__kstrtab_platform_device_add_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_add_data = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_add_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_add_data to i32), ptr @__kstrtab_platform_device_add_data, ptr @__kstrtabns_platform_device_add_data }, section "___ksymtab_gpl+platform_device_add_data", align 4
@platform_bus_type = dso_local global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr @platform_dev_groups, ptr null, ptr @platform_match, ptr @platform_uevent, ptr @platform_probe, ptr null, ptr @platform_remove, ptr @platform_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @platform_dma_configure, ptr @platform_dev_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@platform_devid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"%s.%d.auto\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"failed to claim resource %d: %pR\0A\00", align 1
@__kstrtab_platform_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_add to i32), ptr @__kstrtab_platform_device_add, ptr @__kstrtabns_platform_device_add }, section "___ksymtab_gpl+platform_device_add", align 4
@__kstrtab_platform_device_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_del = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_del to i32), ptr @__kstrtab_platform_device_del, ptr @__kstrtabns_platform_device_del }, section "___ksymtab_gpl+platform_device_del", align 4
@__kstrtab_platform_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_register to i32), ptr @__kstrtab_platform_device_register, ptr @__kstrtabns_platform_device_register }, section "___ksymtab_gpl+platform_device_register", align 4
@__kstrtab_platform_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_unregister to i32), ptr @__kstrtab_platform_device_unregister, ptr @__kstrtabns_platform_device_unregister }, section "___ksymtab_gpl+platform_device_unregister", align 4
@__kstrtab_platform_device_register_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_device_register_full = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_device_register_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_device_register_full to i32), ptr @__kstrtab_platform_device_register_full, ptr @__kstrtabns_platform_device_register_full }, section "___ksymtab_gpl+platform_device_register_full", align 4
@__kstrtab___platform_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___platform_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___platform_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__platform_driver_register to i32), ptr @__kstrtab___platform_driver_register, ptr @__kstrtabns___platform_driver_register }, section "___ksymtab_gpl+__platform_driver_register", align 4
@__kstrtab_platform_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_driver_unregister to i32), ptr @__kstrtab_platform_driver_unregister, ptr @__kstrtabns_platform_driver_unregister }, section "___ksymtab_gpl+platform_driver_unregister", align 4
@.str.11 = private unnamed_addr constant [67 x i8] c"\013%s: drivers registered with %s can not be probed asynchronously\0A\00", align 1
@__func__.__platform_driver_probe = private unnamed_addr constant [24 x i8] c"__platform_driver_probe\00", align 1
@__kstrtab___platform_driver_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns___platform_driver_probe = external dso_local constant [0 x i8], align 1
@__ksymtab___platform_driver_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__platform_driver_probe to i32), ptr @__kstrtab___platform_driver_probe, ptr @__kstrtabns___platform_driver_probe }, section "___ksymtab_gpl+__platform_driver_probe", align 4
@__kstrtab___platform_create_bundle = external dso_local constant [0 x i8], align 1
@__kstrtabns___platform_create_bundle = external dso_local constant [0 x i8], align 1
@__ksymtab___platform_create_bundle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__platform_create_bundle to i32), ptr @__kstrtab___platform_create_bundle, ptr @__kstrtabns___platform_create_bundle }, section "___ksymtab_gpl+__platform_create_bundle", align 4
@.str.12 = private unnamed_addr constant [46 x i8] c"\013failed to register platform driver %ps: %d\0A\00", align 1
@__kstrtab___platform_register_drivers = external dso_local constant [0 x i8], align 1
@__kstrtabns___platform_register_drivers = external dso_local constant [0 x i8], align 1
@__ksymtab___platform_register_drivers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__platform_register_drivers to i32), ptr @__kstrtab___platform_register_drivers, ptr @__kstrtabns___platform_register_drivers }, section "___ksymtab_gpl+__platform_register_drivers", align 4
@__kstrtab_platform_unregister_drivers = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_unregister_drivers = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_unregister_drivers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_unregister_drivers to i32), ptr @__kstrtab_platform_unregister_drivers, ptr @__kstrtabns_platform_unregister_drivers }, section "___ksymtab_gpl+platform_unregister_drivers", align 4
@platform_dev_groups = internal global [2 x ptr] [ptr @platform_dev_group, ptr null], align 4
@platform_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @platform_pm_suspend, ptr @platform_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_generic_runtime_suspend, ptr @pm_generic_runtime_resume, ptr null }, align 4
@__kstrtab_platform_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_bus_type to i32), ptr @__kstrtab_platform_bus_type, ptr @__kstrtabns_platform_bus_type }, section "___ksymtab_gpl+platform_bus_type", align 4
@__kstrtab_platform_find_device_by_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_find_device_by_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_find_device_by_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_find_device_by_driver to i32), ptr @__kstrtab_platform_find_device_by_driver, ptr @__kstrtabns_platform_find_device_by_driver }, section "___ksymtab_gpl+platform_find_device_by_driver", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@platform_dev_group = internal constant %struct.attribute_group { ptr null, ptr @platform_dev_attrs_visible, ptr null, ptr @platform_dev_attrs, ptr null }, align 4
@platform_dev_attrs = internal global [4 x ptr] [ptr @dev_attr_modalias, ptr @dev_attr_numa_node, ptr @dev_attr_driver_override, ptr null], align 4
@dev_attr_numa_node = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @numa_node_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"numa_node\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @modalias_show, ptr null }, align 4
@dev_attr_driver_override = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @driver_override_show, ptr @driver_override_store }, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"platform:%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"driver_override\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"MODALIAS=%s%s\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"platform:\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"probe deferral not supported\0A\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"remove callback returned a non-zero value. This will be ignored.\0A\00", align 1
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab___platform_create_bundle, ptr @__ksymtab___platform_driver_probe, ptr @__ksymtab___platform_driver_register, ptr @__ksymtab___platform_register_drivers, ptr @__ksymtab_devm_platform_get_and_ioremap_resource, ptr @__ksymtab_devm_platform_get_irqs_affinity, ptr @__ksymtab_devm_platform_ioremap_resource, ptr @__ksymtab_devm_platform_ioremap_resource_byname, ptr @__ksymtab_platform_add_devices, ptr @__ksymtab_platform_bus, ptr @__ksymtab_platform_bus_type, ptr @__ksymtab_platform_device_add, ptr @__ksymtab_platform_device_add_data, ptr @__ksymtab_platform_device_add_resources, ptr @__ksymtab_platform_device_alloc, ptr @__ksymtab_platform_device_del, ptr @__ksymtab_platform_device_put, ptr @__ksymtab_platform_device_register, ptr @__ksymtab_platform_device_register_full, ptr @__ksymtab_platform_device_unregister, ptr @__ksymtab_platform_driver_unregister, ptr @__ksymtab_platform_find_device_by_driver, ptr @__ksymtab_platform_get_irq, ptr @__ksymtab_platform_get_irq_byname, ptr @__ksymtab_platform_get_irq_byname_optional, ptr @__ksymtab_platform_get_irq_optional, ptr @__ksymtab_platform_get_mem_or_io, ptr @__ksymtab_platform_get_resource, ptr @__ksymtab_platform_get_resource_byname, ptr @__ksymtab_platform_irq_count, ptr @__ksymtab_platform_unregister_drivers], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @platform_get_resource(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %20, %7
  %11 = phi i32 [ 0, %7 ], [ %22, %20 ]
  %12 = phi i32 [ %2, %7 ], [ %21, %20 ]
  %13 = getelementptr %struct.resource, ptr %9, i32 %11, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 7936
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = add i32 %12, -1
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %18, %17 ], [ %12, %10 ]
  %22 = add nuw i32 %11, 1
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %26, label %10

24:                                               ; preds = %17
  %25 = getelementptr %struct.resource, ptr %9, i32 %11
  br label %26

26:                                               ; preds = %24, %20, %3
  %27 = phi ptr [ %25, %24 ], [ null, %3 ], [ null, %20 ]
  ret ptr %27
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @platform_get_mem_or_io(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %19, %6
  %10 = phi i32 [ 0, %6 ], [ %21, %19 ]
  %11 = phi i32 [ %1, %6 ], [ %20, %19 ]
  %12 = getelementptr %struct.resource, ptr %8, i32 %10, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 768
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = add i32 %11, -1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %9
  %20 = phi i32 [ %17, %16 ], [ %11, %9 ]
  %21 = add nuw i32 %10, 1
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %25, label %9

23:                                               ; preds = %16
  %24 = getelementptr %struct.resource, ptr %8, i32 %10
  br label %25

25:                                               ; preds = %23, %19, %2
  %26 = phi ptr [ %24, %23 ], [ null, %2 ], [ null, %19 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %20, %7
  %11 = phi i32 [ 0, %7 ], [ %22, %20 ]
  %12 = phi i32 [ %1, %7 ], [ %21, %20 ]
  %13 = getelementptr %struct.resource, ptr %9, i32 %11, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 7936
  %16 = icmp eq i32 %15, 512
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = add i32 %12, -1
  %19 = icmp eq i32 %12, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %18, %17 ], [ %12, %10 ]
  %22 = add nuw i32 %11, 1
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %26, label %10

24:                                               ; preds = %17
  %25 = getelementptr %struct.resource, ptr %9, i32 %11
  br label %26

26:                                               ; preds = %24, %20, %3
  %27 = phi ptr [ %25, %24 ], [ null, %3 ], [ null, %20 ]
  %28 = icmp eq ptr %2, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store ptr %27, ptr %2, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %32 = tail call ptr @devm_ioremap_resource(ptr noundef %31, ptr noundef %27) #13
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %19, %6
  %10 = phi i32 [ 0, %6 ], [ %21, %19 ]
  %11 = phi i32 [ %1, %6 ], [ %20, %19 ]
  %12 = getelementptr %struct.resource, ptr %8, i32 %10, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 7936
  %15 = icmp eq i32 %14, 512
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = add i32 %11, -1
  %18 = icmp eq i32 %11, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %9
  %20 = phi i32 [ %17, %16 ], [ %11, %9 ]
  %21 = add nuw i32 %10, 1
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %25, label %9

23:                                               ; preds = %16
  %24 = getelementptr %struct.resource, ptr %8, i32 %10
  br label %25

25:                                               ; preds = %23, %19, %2
  %26 = phi ptr [ %24, %23 ], [ null, %2 ], [ null, %19 ]
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %27, ptr noundef %26) #13
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  br label %9

9:                                                ; preds = %22, %6
  %10 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %11 = getelementptr %struct.resource, ptr %8, i32 %10, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14, !prof !8

14:                                               ; preds = %9
  %15 = getelementptr %struct.resource, ptr %8, i32 %10, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 7936
  %18 = icmp eq i32 %17, 512
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = tail call i32 @strcmp(ptr noundef nonnull %12, ptr noundef %1) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %14, %9
  %23 = add nuw i32 %10, 1
  %24 = icmp eq i32 %23, %4
  br i1 %24, label %27, label %9

25:                                               ; preds = %19
  %26 = getelementptr %struct.resource, ptr %8, i32 %10
  br label %27

27:                                               ; preds = %25, %22, %2
  %28 = phi ptr [ %26, %25 ], [ null, %2 ], [ null, %22 ]
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %30 = tail call ptr @devm_ioremap_resource(ptr noundef %29, ptr noundef %28) #13
  ret ptr %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @platform_get_resource_byname(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %23, %7
  %11 = phi i32 [ 0, %7 ], [ %24, %23 ]
  %12 = getelementptr %struct.resource, ptr %9, i32 %11, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !8

15:                                               ; preds = %10
  %16 = getelementptr %struct.resource, ptr %9, i32 %11, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 7936
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call i32 @strcmp(ptr noundef nonnull %13, ptr noundef %2)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %15, %10
  %24 = add nuw i32 %11, 1
  %25 = icmp eq i32 %24, %5
  br i1 %25, label %28, label %10

26:                                               ; preds = %20
  %27 = getelementptr %struct.resource, ptr %9, i32 %11
  br label %28

28:                                               ; preds = %26, %23, %3
  %29 = phi ptr [ %27, %26 ], [ null, %3 ], [ null, %23 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_get_irq_optional(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @of_irq_get(ptr noundef nonnull %4, i32 noundef %1) #13
  %8 = icmp sgt i32 %7, 0
  %9 = icmp eq i32 %7, -517
  %10 = or i1 %8, %9
  br i1 %10, label %57, label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %61, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %28, %15
  %19 = phi i32 [ 0, %15 ], [ %30, %28 ]
  %20 = phi i32 [ %1, %15 ], [ %29, %28 ]
  %21 = getelementptr %struct.resource, ptr %17, i32 %19, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 7936
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = add i32 %20, -1
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %18
  %29 = phi i32 [ %26, %25 ], [ %20, %18 ]
  %30 = add nuw i32 %19, 1
  %31 = icmp eq i32 %30, %13
  br i1 %31, label %61, label %18

32:                                               ; preds = %25
  %33 = getelementptr %struct.resource, ptr %17, i32 %19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %32
  %36 = and i32 %22, 255
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %33, align 4
  %40 = tail call ptr @irq_get_irq_data(i32 noundef %39) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %21, align 4
  %44 = getelementptr inbounds %struct.irq_data, ptr %40, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, -16
  store i32 %47, ptr %45, align 4
  %48 = and i32 %43, 15
  %49 = load ptr, ptr %44, align 4
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, ptr %49, align 4
  %52 = load ptr, ptr %44, align 4
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, 33554432
  store i32 %54, ptr %52, align 4
  br label %55

55:                                               ; preds = %42, %35
  %56 = load i32, ptr %33, align 4
  br label %57

57:                                               ; preds = %55, %6
  %58 = phi i32 [ %7, %6 ], [ %56, %55 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61, !prof !8

60:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 234, i32 noundef 9, ptr noundef nonnull @.str.2) #13
  br label %61

61:                                               ; preds = %60, %57, %38, %32, %28, %11
  %62 = phi i32 [ %58, %57 ], [ 0, %60 ], [ -6, %38 ], [ -6, %11 ], [ -6, %32 ], [ -6, %28 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_get_irq(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %1)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %6, i32 noundef %3, ptr noundef nonnull @.str.3, i32 noundef %1) #13
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ %3, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_irq_count(ptr nocapture noundef readonly %0) #1 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %3)
  %5 = icmp sgt i32 %4, -1
  %6 = add i32 %3, 1
  br i1 %5, label %2, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %4, -517
  %9 = select i1 %8, i32 -517, i32 %3
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_platform_get_irqs_affinity(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #1 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %3, %2
  br i1 %8, label %70, label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %13, %9 ], [ 0, %7 ]
  %11 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %10) #13
  %12 = icmp sgt i32 %11, -1
  %13 = add i32 %10, 1
  br i1 %12, label %9, label %14

14:                                               ; preds = %9
  %15 = icmp eq i32 %11, -517
  %16 = select i1 %15, i32 -517, i32 %10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %16, %2
  br i1 %19, label %70, label %20

20:                                               ; preds = %18
  %21 = tail call i32 @irq_calc_affinity_vectors(i32 noundef %2, i32 noundef %16, ptr noundef nonnull %1) #13
  %22 = icmp ult i32 %21, %2
  br i1 %22, label %70, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %3)
  %25 = shl i32 %24, 2
  %26 = add i32 %25, 4
  %27 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_platform_get_irqs_affinity_release, i32 noundef %26, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %70, label %29

29:                                               ; preds = %23
  store i32 %24, ptr %27, align 4
  %30 = icmp sgt i32 %24, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %33

33:                                               ; preds = %40, %31
  %34 = phi i32 [ 0, %31 ], [ %43, %40 ]
  %35 = tail call i32 @platform_get_irq_optional(ptr noundef %0, i32 noundef %34) #13
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %32, i32 noundef %35, ptr noundef nonnull @.str.3, i32 noundef %34) #13
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %37, %33
  %41 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %42 = getelementptr %struct.irq_affinity_devres, ptr %27, i32 0, i32 1, i32 %34
  store i32 %41, ptr %42, align 4
  %43 = add nuw nsw i32 %34, 1
  %44 = icmp eq i32 %43, %24
  br i1 %44, label %45, label %33

45:                                               ; preds = %40
  %46 = tail call ptr @irq_create_affinity_masks(i32 noundef %24, ptr noundef nonnull %1) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %51

48:                                               ; preds = %29
  %49 = tail call ptr @irq_create_affinity_masks(i32 noundef %24, ptr noundef nonnull %1) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %64

51:                                               ; preds = %45
  br i1 %30, label %55, label %64

52:                                               ; preds = %55
  %53 = add nuw nsw i32 %56, 1
  %54 = icmp eq i32 %53, %24
  br i1 %54, label %64, label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ %53, %52 ], [ 0, %51 ]
  %57 = getelementptr %struct.irq_affinity_devres, ptr %27, i32 0, i32 1, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.irq_affinity_desc, ptr %46, i32 %56
  %60 = tail call i32 @irq_update_affinity_desc(i32 noundef %58, ptr noundef %59) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %52, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.5, i32 noundef %58, i32 noundef %60) #14
  tail call void @kfree(ptr noundef nonnull %46) #13
  br label %68

64:                                               ; preds = %52, %51, %48
  %65 = phi ptr [ %46, %51 ], [ %49, %48 ], [ %46, %52 ]
  %66 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @devres_add(ptr noundef %66, ptr noundef nonnull %27) #13
  tail call void @kfree(ptr noundef nonnull %65) #13
  %67 = getelementptr inbounds %struct.irq_affinity_devres, ptr %27, i32 0, i32 1
  store ptr %67, ptr %4, align 4
  br label %70

68:                                               ; preds = %62, %48, %45, %37
  %69 = phi i32 [ %60, %62 ], [ -12, %45 ], [ -12, %48 ], [ %38, %37 ]
  tail call void @devres_free(ptr noundef nonnull %27) #13
  br label %70

70:                                               ; preds = %68, %64, %23, %20, %18, %14, %7, %5
  %71 = phi i32 [ %69, %68 ], [ %24, %64 ], [ -1, %5 ], [ -34, %7 ], [ %16, %14 ], [ -28, %18 ], [ -28, %20 ], [ -12, %23 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_calc_affinity_vectors(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_platform_get_irqs_affinity_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %9, %5 ], [ 0, %2 ]
  %7 = getelementptr %struct.irq_affinity_devres, ptr %1, i32 0, i32 1, i32 %6
  %8 = load i32, ptr %7, align 4
  tail call void @irq_dispose_mapping(i32 noundef %8) #13
  %9 = add nuw i32 %6, 1
  %10 = load i32, ptr %1, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %5, label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_create_affinity_masks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_update_affinity_desc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @__platform_get_irq_byname(ptr noundef %0, ptr noundef %1)
  %4 = icmp slt i32 %3, 0
  %5 = icmp ne i32 %3, -517
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef %1) #14
  br label %9

9:                                                ; preds = %7, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__platform_get_irq_byname(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @of_irq_get_byname(ptr noundef nonnull %4, ptr noundef %1) #13
  %8 = icmp sgt i32 %7, 0
  %9 = icmp eq i32 %7, -517
  %10 = or i1 %8, %9
  br i1 %10, label %42, label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 8
  br label %18

18:                                               ; preds = %31, %15
  %19 = phi i32 [ 0, %15 ], [ %32, %31 ]
  %20 = getelementptr %struct.resource, ptr %17, i32 %19, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !prof !8

23:                                               ; preds = %18
  %24 = getelementptr %struct.resource, ptr %17, i32 %19, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 7936
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = tail call i32 @strcmp(ptr noundef nonnull %21, ptr noundef %1) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %23, %18
  %32 = add nuw i32 %19, 1
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %42, label %18

34:                                               ; preds = %28
  %35 = getelementptr %struct.resource, ptr %17, i32 %19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %35, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42, !prof !8

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 449, i32 noundef 9, ptr noundef nonnull @.str.2) #13
  %41 = load i32, ptr %35, align 4
  br label %42

42:                                               ; preds = %40, %37, %34, %31, %11, %6
  %43 = phi i32 [ %7, %6 ], [ -6, %34 ], [ -6, %11 ], [ %41, %40 ], [ %38, %37 ], [ -6, %31 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_get_irq_byname_optional(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @__platform_get_irq_byname(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_add_devices(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %69

4:                                                ; preds = %66, %2
  %5 = phi i32 [ %67, %66 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 5
  %10 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 20
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 17
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i64 4294967295, ptr %11, align 8
  br label %15

15:                                               ; preds = %14, %4
  %16 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 4
  store i64 4294967295, ptr %20, align 8
  store ptr %20, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = tail call i32 @platform_device_add(ptr noundef %7) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %21
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %64, %24
  %27 = phi i32 [ %28, %64 ], [ %5, %24 ]
  %28 = add nsw i32 %27, -1
  %29 = getelementptr ptr, ptr %0, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  %33 = or i1 %31, %32
  br i1 %33, label %64, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  tail call void @device_del(ptr noundef %35) #13
  %36 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 2
  %37 = load i8, ptr %36, align 8, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_devid_ida, i32 noundef %41) #13
  store i32 -2, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 7
  br label %48

48:                                               ; preds = %59, %46
  %49 = phi i32 [ %44, %46 ], [ %60, %59 ]
  %50 = phi i32 [ 0, %46 ], [ %61, %59 ]
  %51 = load ptr, ptr %47, align 8
  %52 = getelementptr %struct.resource, ptr %51, i32 %50, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = getelementptr %struct.resource, ptr %51, i32 %50
  %57 = tail call i32 @release_resource(ptr noundef %56) #13
  %58 = load i32, ptr %43, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = phi i32 [ %58, %55 ], [ %49, %48 ]
  %61 = add nuw i32 %50, 1
  %62 = icmp ult i32 %61, %60
  br i1 %62, label %48, label %63

63:                                               ; preds = %59, %42
  tail call void @put_device(ptr noundef %35) #13
  br label %64

64:                                               ; preds = %63, %26
  %65 = icmp sgt i32 %27, 1
  br i1 %65, label %26, label %69

66:                                               ; preds = %21
  %67 = add nuw nsw i32 %5, 1
  %68 = icmp eq i32 %67, %1
  br i1 %68, label %69, label %4

69:                                               ; preds = %66, %64, %24, %2
  %70 = phi i32 [ %22, %24 ], [ 0, %2 ], [ %22, %64 ], [ 0, %66 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_device_register(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 4294967295, ptr %5, align 8
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 4
  store i64 4294967295, ptr %14, align 8
  store ptr %14, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = tail call i32 @platform_device_add(ptr noundef %0)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @platform_device_unregister(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %35, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_del(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 8, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_devid_ida, i32 noundef %12) #13
  store i32 -2, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  br label %19

19:                                               ; preds = %30, %17
  %20 = phi i32 [ %15, %17 ], [ %31, %30 ]
  %21 = phi i32 [ 0, %17 ], [ %32, %30 ]
  %22 = load ptr, ptr %18, align 8
  %23 = getelementptr %struct.resource, ptr %22, i32 %21, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr %struct.resource, ptr %22, i32 %21
  %28 = tail call i32 @release_resource(ptr noundef %27) #13
  %29 = load i32, ptr %14, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i32 [ %29, %26 ], [ %20, %19 ]
  %32 = add nuw i32 %21, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %19, label %34

34:                                               ; preds = %30, %13
  tail call void @put_device(ptr noundef %6) #13
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @platform_device_put(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @put_device(ptr noundef %6) #13
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @platform_device_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = tail call i32 @strlen(ptr noundef %0)
  %4 = add i32 %3, 537
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.platform_object, ptr %5, i32 0, i32 1
  %9 = tail call ptr @strcpy(ptr noundef %8, ptr noundef %0)
  store ptr %8, ptr %5, align 64
  %10 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 1
  store i32 %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 33
  store ptr @platform_device_release, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 5
  %14 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 20
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 17
  %16 = load i64, ptr %15, align 64
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i64 4294967295, ptr %15, align 64
  br label %19

19:                                               ; preds = %18, %7
  %20 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 4
  store i64 4294967295, ptr %24, align 8
  store ptr %24, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %19, %2
  %26 = phi ptr [ null, %2 ], [ %5, %19 ], [ %5, %23 ]
  ret ptr %26
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_device_release(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  tail call void @of_node_put(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #13
  %7 = getelementptr i8, ptr %0, i32 508
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #13
  %9 = getelementptr i8, ptr %0, i32 496
  %10 = load ptr, ptr %9, align 8
  tail call void @kfree(ptr noundef %10) #13
  %11 = getelementptr i8, ptr %0, i32 504
  %12 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %12) #13
  tail call void @kfree(ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_device_add_resources(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = shl i32 %2, 5
  %7 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %6, i32 noundef 3264) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %3
  %10 = phi ptr [ %7, %5 ], [ null, %3 ]
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  tail call void @kfree(ptr noundef %12) #13
  store ptr %10, ptr %11, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  store i32 %2, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_device_add_data(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 3264) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5, %3
  %9 = phi ptr [ %6, %5 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %11 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %11) #13
  store ptr %9, ptr %10, align 4
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi i32 [ 0, %8 ], [ -12, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_device_add(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %93, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store ptr @platform_bus, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 5
  store ptr @platform_bus_type, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %13 [
    i32 -1, label %16
    i32 -2, label %19
  ]

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8
  %15 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %14, i32 noundef %12) #13
  br label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %0, align 8
  %18 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef %17) #13
  br label %26

19:                                               ; preds = %9
  %20 = tail call i32 @ida_alloc_range(ptr noundef nonnull @platform_devid_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %93, label %22

22:                                               ; preds = %19
  store i32 %20, ptr %11, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 2
  store i8 1, ptr %23, align 8
  %24 = load ptr, ptr %0, align 8
  %25 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef %24, i32 noundef %20) #13
  br label %26

26:                                               ; preds = %22, %16, %13
  %27 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  br label %33

33:                                               ; preds = %61, %30
  %34 = phi i32 [ 0, %30 ], [ %62, %61 ]
  %35 = load ptr, ptr %31, align 8
  %36 = getelementptr %struct.resource, ptr %35, i32 %34
  %37 = getelementptr %struct.resource, ptr %35, i32 %34, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load ptr, ptr %32, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load ptr, ptr %4, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi ptr [ %44, %43 ], [ %41, %40 ]
  store ptr %46, ptr %37, align 4
  br label %47

47:                                               ; preds = %45, %33
  %48 = getelementptr %struct.resource, ptr %35, i32 %34, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr %struct.resource, ptr %35, i32 %34, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 7936
  switch i32 %54, label %61 [
    i32 512, label %56
    i32 256, label %55
  ]

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %51, %47
  %57 = phi ptr [ @iomem_resource, %51 ], [ %49, %47 ], [ @ioport_resource, %55 ]
  %58 = tail call i32 @insert_resource(ptr noundef nonnull %57, ptr noundef %36) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %34, ptr noundef %36) #14
  br label %69

61:                                               ; preds = %56, %51
  %62 = add nuw i32 %34, 1
  %63 = load i32, ptr %27, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %33, label %65

65:                                               ; preds = %61, %26
  %66 = phi i32 [ 0, %26 ], [ %62, %61 ]
  %67 = tail call i32 @device_add(ptr noundef %4) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %65, %60
  %70 = phi i32 [ %34, %60 ], [ %66, %65 ]
  %71 = phi i32 [ %58, %60 ], [ %67, %65 ]
  %72 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 2
  %73 = load i8, ptr %72, align 8, !range !9
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69
  %76 = load i32, ptr %11, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_devid_ida, i32 noundef %76) #13
  store i32 -2, ptr %11, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = icmp eq i32 %70, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  br label %81

81:                                               ; preds = %91, %79
  %82 = phi i32 [ %70, %79 ], [ %83, %91 ]
  %83 = add i32 %82, -1
  %84 = load ptr, ptr %80, align 8
  %85 = getelementptr %struct.resource, ptr %84, i32 %83, i32 5
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = getelementptr %struct.resource, ptr %84, i32 %83
  %90 = tail call i32 @release_resource(ptr noundef %89) #13
  br label %91

91:                                               ; preds = %88, %81
  %92 = icmp eq i32 %83, 0
  br i1 %92, label %93, label %81

93:                                               ; preds = %91, %77, %65, %19, %1
  %94 = phi i32 [ -22, %1 ], [ 0, %65 ], [ %20, %19 ], [ %71, %77 ], [ %71, %91 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @platform_device_del(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_del(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 8, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_devid_ida, i32 noundef %12) #13
  store i32 -2, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 7
  br label %19

19:                                               ; preds = %30, %17
  %20 = phi i32 [ %15, %17 ], [ %31, %30 ]
  %21 = phi i32 [ 0, %17 ], [ %32, %30 ]
  %22 = load ptr, ptr %18, align 8
  %23 = getelementptr %struct.resource, ptr %22, i32 %21, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = getelementptr %struct.resource, ptr %22, i32 %21
  %28 = tail call i32 @release_resource(ptr noundef %27) #13
  %29 = load i32, ptr %14, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i32 [ %29, %26 ], [ %20, %19 ]
  %32 = add nuw i32 %21, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %19, label %34

34:                                               ; preds = %30, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @platform_device_register_full(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @strlen(ptr noundef %3) #13
  %7 = add i32 %6, 537
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %102, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_object, ptr %8, i32 0, i32 1
  %12 = tail call ptr @strcpy(ptr noundef %11, ptr noundef %3) #13
  store ptr %11, ptr %8, align 64
  %13 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 1
  store i32 %5, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 33
  store ptr @platform_device_release, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 5
  %17 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 20
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 17
  %19 = load i64, ptr %18, align 64
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i64 4294967295, ptr %18, align 64
  br label %22

22:                                               ; preds = %21, %10
  %23 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 4
  store i64 4294967295, ptr %27, align 8
  store ptr %27, ptr %23, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 26
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  %35 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.fwnode_handle, ptr %32, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, @of_fwnode_ops
  %41 = getelementptr i8, ptr %32, i32 -12
  %42 = select i1 %40, ptr %41, ptr null
  br label %43

43:                                               ; preds = %37, %28
  %44 = phi ptr [ null, %28 ], [ %42, %37 ]
  %45 = tail call ptr @of_node_get(ptr noundef %44) #13
  %46 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 25
  store ptr %45, ptr %46, align 16
  %47 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 2
  %48 = load i8, ptr %47, align 8, !range !9
  %49 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 37
  %50 = load i8, ptr %49, align 4
  %51 = shl nuw nsw i8 %48, 2
  %52 = and i8 %50, -5
  %53 = or i8 %52, %51
  store i8 %53, ptr %49, align 4
  %54 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 9
  %55 = load i64, ptr %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 4
  store i64 %55, ptr %58, align 8
  store ptr %58, ptr %23, align 4
  %59 = load i64, ptr %54, align 8
  store i64 %59, ptr %18, align 64
  br label %60

60:                                               ; preds = %57, %43
  %61 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 6
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq ptr %62, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = shl i32 %64, 5
  %68 = tail call ptr @kmemdup(ptr noundef nonnull %62, i32 noundef %67, i32 noundef 3264) #13
  %69 = icmp eq ptr %68, null
  br i1 %69, label %96, label %70

70:                                               ; preds = %66, %60
  %71 = phi ptr [ %68, %66 ], [ null, %60 ]
  %72 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 7
  %73 = load ptr, ptr %72, align 64
  tail call void @kfree(ptr noundef %73) #13
  store ptr %71, ptr %72, align 64
  %74 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 6
  store i32 %64, ptr %74, align 4
  %75 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 7
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 8
  %80 = load i32, ptr %79, align 8
  %81 = tail call ptr @kmemdup(ptr noundef nonnull %76, i32 noundef %80, i32 noundef 3264) #13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %96, label %83

83:                                               ; preds = %78, %70
  %84 = phi ptr [ %81, %78 ], [ null, %70 ]
  %85 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 7
  %86 = load ptr, ptr %85, align 4
  tail call void @kfree(ptr noundef %86) #13
  store ptr %84, ptr %85, align 4
  %87 = getelementptr inbounds %struct.platform_device_info, ptr %0, i32 0, i32 10
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = tail call i32 @device_create_managed_software_node(ptr noundef %14, ptr noundef nonnull %88, ptr noundef null) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90, %83
  %94 = tail call i32 @platform_device_add(ptr noundef nonnull %8)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93, %90, %78, %66
  %97 = phi i32 [ %91, %90 ], [ %94, %93 ], [ -12, %66 ], [ -12, %78 ]
  %98 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @put_device(ptr noundef %14) #13
  br label %100

100:                                              ; preds = %99, %96
  %101 = inttoptr i32 %97 to ptr
  br label %102

102:                                              ; preds = %100, %93, %1
  %103 = phi ptr [ %101, %100 ], [ %8, %93 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_managed_software_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__platform_driver_register(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5
  %4 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5, i32 2
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5, i32 1
  store ptr @platform_bus_type, ptr %5, align 4
  %6 = tail call i32 @driver_register(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @platform_driver_unregister(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5
  tail call void @driver_unregister(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__platform_driver_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %9, ptr noundef nonnull @__func__.__platform_driver_probe) #14
  br label %36

11:                                               ; preds = %3
  store i32 2, ptr %4, align 4
  %12 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 7
  store i8 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5, i32 4
  store i8 1, ptr %13, align 4
  store ptr %1, ptr %0, align 4
  %14 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5
  %15 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5, i32 2
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5, i32 1
  store ptr @platform_bus_type, ptr %16, align 4
  %17 = tail call i32 @driver_register(ptr noundef %14) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %11
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.bus_type, ptr %20, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.subsys_private, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %23) #13
  store ptr @platform_probe_fail, ptr %0, align 4
  %24 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5, i32 18
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.driver_private, ptr %25, i32 0, i32 1, i32 1
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.bus_type, ptr %29, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.subsys_private, ptr %31, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !10
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br i1 %28, label %35, label %36

35:                                               ; preds = %19
  tail call void @driver_unregister(ptr noundef %14) #13
  br label %36

36:                                               ; preds = %35, %19, %11, %7
  %37 = phi i32 [ -22, %7 ], [ %17, %11 ], [ -19, %35 ], [ 0, %19 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @platform_probe_fail(ptr nocapture noundef readnone %0) #7 {
  ret i32 -6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__platform_create_bundle(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #1 {
  %8 = getelementptr inbounds %struct.platform_driver, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strlen(ptr noundef %9) #13
  %11 = add i32 %10, 537
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %86, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.platform_object, ptr %12, i32 0, i32 1
  %16 = tail call ptr @strcpy(ptr noundef %15, ptr noundef %9) #13
  store ptr %15, ptr %12, align 64
  %17 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 1
  store i32 -1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  tail call void @device_initialize(ptr noundef %18) #13
  %19 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 33
  store ptr @platform_device_release, ptr %19, align 4
  %20 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 5
  %21 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 20
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 17
  %23 = load i64, ptr %22, align 64
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i64 4294967295, ptr %22, align 64
  br label %26

26:                                               ; preds = %25, %14
  %27 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 4
  store i64 4294967295, ptr %31, align 8
  store ptr %31, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = icmp eq ptr %2, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = shl i32 %3, 5
  %36 = tail call ptr @kmemdup(ptr noundef nonnull %2, i32 noundef %35, i32 noundef 3264) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %34, %32
  %39 = phi ptr [ %36, %34 ], [ null, %32 ]
  %40 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 7
  %41 = load ptr, ptr %40, align 64
  tail call void @kfree(ptr noundef %41) #13
  store ptr %39, ptr %40, align 64
  %42 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 6
  store i32 %3, ptr %42, align 4
  %43 = icmp eq ptr %4, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = tail call ptr @kmemdup(ptr noundef nonnull %4, i32 noundef %5, i32 noundef 3264) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %82, label %47

47:                                               ; preds = %44, %38
  %48 = phi ptr [ %45, %44 ], [ null, %38 ]
  %49 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3, i32 7
  %50 = load ptr, ptr %49, align 4
  tail call void @kfree(ptr noundef %50) #13
  store ptr %48, ptr %49, align 4
  %51 = tail call i32 @platform_device_add(ptr noundef nonnull %12)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %47
  %54 = tail call i32 @__platform_driver_probe(ptr noundef %0, ptr noundef %1, ptr noundef %6)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %53
  %57 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %82, label %58

58:                                               ; preds = %56
  tail call void @device_del(ptr noundef %18) #13
  %59 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 2
  %60 = load i8, ptr %59, align 8, !range !9
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr %17, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_devid_ida, i32 noundef %63) #13
  store i32 -2, ptr %17, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, ptr %42, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %78, %64
  %68 = phi i32 [ %79, %78 ], [ %65, %64 ]
  %69 = phi i32 [ %80, %78 ], [ 0, %64 ]
  %70 = load ptr, ptr %40, align 64
  %71 = getelementptr %struct.resource, ptr %70, i32 %69, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = getelementptr %struct.resource, ptr %70, i32 %69
  %76 = tail call i32 @release_resource(ptr noundef %75) #13
  %77 = load i32, ptr %42, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = phi i32 [ %77, %74 ], [ %68, %67 ]
  %80 = add nuw i32 %69, 1
  %81 = icmp ult i32 %80, %79
  br i1 %81, label %67, label %82

82:                                               ; preds = %78, %64, %56, %47, %44, %34
  %83 = phi i32 [ %51, %47 ], [ -12, %34 ], [ -12, %44 ], [ %54, %56 ], [ %54, %64 ], [ %54, %78 ]
  %84 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @put_device(ptr noundef %18) #13
  br label %86

86:                                               ; preds = %85, %82, %7
  %87 = phi i32 [ %83, %82 ], [ %83, %85 ], [ -12, %7 ]
  %88 = inttoptr i32 %87 to ptr
  br label %89

89:                                               ; preds = %86, %53
  %90 = phi ptr [ %88, %86 ], [ %12, %53 ]
  ret ptr %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__platform_register_drivers(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %19, %3
  %6 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_driver, ptr %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.platform_driver, ptr %8, i32 0, i32 5, i32 2
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_driver, ptr %8, i32 0, i32 5, i32 1
  store ptr @platform_bus_type, ptr %11, align 4
  %12 = tail call i32 @driver_register(ptr noundef %9) #13
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = getelementptr ptr, ptr %0, i32 %6
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %16, i32 noundef %12) #14
  %18 = icmp eq i32 %6, 0
  br i1 %18, label %29, label %22

19:                                               ; preds = %5
  %20 = add nuw i32 %6, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %29, label %5

22:                                               ; preds = %22, %14
  %23 = phi i32 [ %24, %22 ], [ %6, %14 ]
  %24 = add i32 %23, -1
  %25 = getelementptr ptr, ptr %0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.platform_driver, ptr %26, i32 0, i32 5
  tail call void @driver_unregister(ptr noundef %27) #13
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %29, label %22

29:                                               ; preds = %22, %19, %14, %3
  %30 = phi i32 [ %12, %14 ], [ 0, %3 ], [ %12, %22 ], [ 0, %19 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @platform_unregister_drivers(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  %6 = add i32 %5, -1
  %7 = getelementptr ptr, ptr %0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_driver, ptr %8, i32 0, i32 5
  tail call void @driver_unregister(ptr noundef %9) #13
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_pm_suspend(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #13
  br label %22

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %3, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 -16
  %21 = tail call i32 %17(ptr noundef %20, [1 x i32] [i32 2]) #13
  br label %22

22:                                               ; preds = %19, %15, %13, %9, %1
  %23 = phi i32 [ 0, %1 ], [ %14, %13 ], [ 0, %9 ], [ %21, %19 ], [ 0, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_pm_resume(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dev_pm_ops, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0) #13
  br label %22

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %3, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %0, i32 -16
  %21 = tail call i32 %17(ptr noundef %20) #13
  br label %22

22:                                               ; preds = %19, %15, %13, %9, %1
  %23 = phi i32 [ 0, %1 ], [ %14, %13 ], [ 0, %9 ], [ %21, %19 ], [ 0, %15 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_dma_configure(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_dma_configure_id(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true, ptr noundef null) #13
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_match(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 504
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br label %43

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @of_match_device(ptr noundef %13, ptr noundef %0) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %1, i32 76
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %18, align 4
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 8
  br label %25

25:                                               ; preds = %31, %23
  %26 = phi ptr [ %18, %23 ], [ %32, %31 ]
  %27 = tail call i32 @strcmp(ptr noundef %24, ptr noundef %26) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %0, i32 500
  store ptr %26, ptr %30, align 4
  br label %35

31:                                               ; preds = %25
  %32 = getelementptr %struct.platform_device_id, ptr %26, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %25

35:                                               ; preds = %31, %29, %20
  %36 = phi ptr [ %26, %29 ], [ null, %20 ], [ null, %31 ]
  %37 = icmp ne ptr %36, null
  br label %43

38:                                               ; preds = %16
  %39 = load ptr, ptr %3, align 8
  %40 = load ptr, ptr %1, align 4
  %41 = tail call i32 @strcmp(ptr noundef %39, ptr noundef %40)
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %38, %35, %11, %7
  %44 = phi i1 [ %10, %7 ], [ %37, %35 ], [ %42, %38 ], [ true, %11 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_uevent(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #13
  %4 = icmp eq i32 %3, -19
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %7) #13
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -20
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, @platform_probe_fail
  br i1 %7, label %31, label %8, !prof !8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @of_clk_set_defaults(ptr noundef %10, i1 noundef zeroext false) #13
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @dev_pm_domain_attach(ptr noundef %0, i1 noundef zeroext true) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = tail call i32 %17(ptr noundef %5) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #13
  br label %23

23:                                               ; preds = %22, %13
  %24 = phi i32 [ %14, %13 ], [ %20, %22 ]
  %25 = getelementptr i8, ptr %3, i32 80
  %26 = load i8, ptr %25, align 4, !range !9
  %27 = icmp ne i8 %26, 0
  %28 = icmp eq i32 %24, -517
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.21) #14
  br label %31

31:                                               ; preds = %30, %23, %19, %16, %8, %1
  %32 = phi i32 [ -6, %1 ], [ %11, %8 ], [ -6, %30 ], [ %24, %23 ], [ 0, %19 ], [ 0, %16 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_remove(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -16
  %9 = tail call i32 %5(ptr noundef %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.22) #14
  br label %12

12:                                               ; preds = %11, %7, %1
  tail call void @dev_pm_domain_detach(ptr noundef %0, i1 noundef zeroext true) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_shutdown(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 -12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %2) #13
  br label %11

11:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @platform_find_device_by_driver(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @__platform_match) #13
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__platform_match(ptr noundef %0, ptr nocapture noundef readonly %1) #8 {
  %3 = tail call i32 @platform_match(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local void @early_platform_cleanup() local_unnamed_addr #9 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @platform_bus_init() local_unnamed_addr #9 section ".init.text" {
  tail call void @early_platform_cleanup() #16
  %1 = tail call i32 @device_register(ptr noundef nonnull @platform_bus) #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @put_device(ptr noundef nonnull @platform_bus) #13
  br label %9

4:                                                ; preds = %0
  %5 = tail call i32 @bus_register(ptr noundef nonnull @platform_bus_type) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @device_unregister(ptr noundef nonnull @platform_bus) #13
  br label %8

8:                                                ; preds = %7, %4
  tail call void @of_platform_register_reconfig_notifier() #13
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i32 [ %1, %3 ], [ %5, %8 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_register_reconfig_notifier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @platform_dev_attrs_visible(ptr nocapture noundef readnone %0, ptr noundef readonly %1, i32 noundef %2) #11 {
  %4 = icmp eq ptr %1, @dev_attr_numa_node
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i16 [ %7, %5 ], [ 0, %3 ]
  ret i16 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @numa_node_show(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef -1) #13
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = tail call i32 @of_device_modalias(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #13
  %5 = icmp eq i32 %4, -19
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -16
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %8) #13
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ %9, %6 ], [ %4, %3 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_modalias(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr i8, ptr %0, i32 504
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef %6) #13
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_override_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = icmp ugt i32 %3, 4094
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef %3, i32 noundef 3264) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 10)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8 0, ptr %10, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr i8, ptr %0, i32 504
  %16 = load ptr, ptr %15, align 8
  %17 = load i8, ptr %7, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %20

20:                                               ; preds = %19, %13
  %21 = phi ptr [ null, %19 ], [ %7, %13 ]
  store ptr %21, ptr %15, align 8
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @kfree(ptr noundef %16) #13
  br label %22

22:                                               ; preds = %20, %6, %4
  %23 = phi i32 [ %3, %20 ], [ -22, %4 ], [ -12, %6 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{i64 2149258934}
!11 = !{i64 2149254758}
!12 = !{i64 2149254833, i64 2149254860, i64 2149254907, i64 2149254929, i64 2149254957, i64 2149254977}
!13 = !{i64 2149281937}
