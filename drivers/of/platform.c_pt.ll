; ModuleID = '/llk/IR/drivers/of/platform.c_pt.bc'
source_filename = "../drivers/of/platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_find_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22of_find_device_by_node\22\09\09\09\09\09"
module asm "__kstrtabns_of_find_device_by_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22of_device_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_of_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_platform_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22of_platform_device_create\22\09\09\09\09\09"
module asm "__kstrtabns_of_platform_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_platform_bus_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22of_platform_bus_probe\22\09\09\09\09\09"
module asm "__kstrtabns_of_platform_bus_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_platform_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22of_platform_populate\22\09\09\09\09\09"
module asm "__kstrtabns_of_platform_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_platform_default_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22of_platform_default_populate\22\09\09\09\09\09"
module asm "__kstrtabns_of_platform_default_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_platform_device_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22of_platform_device_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_of_platform_device_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_platform_depopulate:\09\09\09\09\09"
module asm "\09.asciz \09\22of_platform_depopulate\22\09\09\09\09\09"
module asm "__kstrtabns_of_platform_depopulate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_platform_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_platform_populate\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_platform_populate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_platform_depopulate:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_platform_depopulate\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_platform_depopulate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_dev_auxdata = type { ptr, i32, ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }

@of_default_bus_match_table = dso_local constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-mfd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"isa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,amba-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@__kstrtab_of_find_device_by_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_find_device_by_node = external dso_local constant [0 x i8], align 1
@__ksymtab_of_find_device_by_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_find_device_by_node to i32), ptr @__kstrtab_of_find_device_by_node, ptr @__kstrtabns_of_find_device_by_node }, section "___ksymtab+of_find_device_by_node", align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"drivers/of/platform.c\00", align 1
@platform_bus = external dso_local global %struct.device, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_of_device_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_device_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_of_device_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_device_alloc to i32), ptr @__kstrtab_of_device_alloc, ptr @__kstrtabns_of_device_alloc }, section "___ksymtab+of_device_alloc", align 4
@__kstrtab_of_platform_device_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_platform_device_create = external dso_local constant [0 x i8], align 1
@__ksymtab_of_platform_device_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_platform_device_create to i32), ptr @__kstrtab_of_platform_device_create, ptr @__kstrtabns_of_platform_device_create }, section "___ksymtab+of_platform_device_create", align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__kstrtab_of_platform_bus_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_platform_bus_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_of_platform_bus_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_platform_bus_probe to i32), ptr @__kstrtab_of_platform_bus_probe, ptr @__kstrtabns_of_platform_bus_probe }, section "___ksymtab+of_platform_bus_probe", align 4
@__kstrtab_of_platform_populate = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_platform_populate = external dso_local constant [0 x i8], align 1
@__ksymtab_of_platform_populate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_platform_populate to i32), ptr @__kstrtab_of_platform_populate, ptr @__kstrtabns_of_platform_populate }, section "___ksymtab_gpl+of_platform_populate", align 4
@__kstrtab_of_platform_default_populate = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_platform_default_populate = external dso_local constant [0 x i8], align 1
@__ksymtab_of_platform_default_populate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_platform_default_populate to i32), ptr @__kstrtab_of_platform_default_populate, ptr @__kstrtabns_of_platform_default_populate }, section "___ksymtab_gpl+of_platform_default_populate", align 4
@__initcall__kmod_platform__249_552_of_platform_default_populate_init3s = internal global ptr @of_platform_default_populate_init, section ".initcall3s.init", align 4
@__initcall__kmod_platform__250_559_of_platform_sync_state_init7s = internal global ptr @of_platform_sync_state_init, section ".initcall7s.init", align 4
@amba_bustype = external dso_local global %struct.bus_type, align 4
@__kstrtab_of_platform_device_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_platform_device_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_of_platform_device_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_platform_device_destroy to i32), ptr @__kstrtab_of_platform_device_destroy, ptr @__kstrtabns_of_platform_device_destroy }, section "___ksymtab_gpl+of_platform_device_destroy", align 4
@__kstrtab_of_platform_depopulate = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_platform_depopulate = external dso_local constant [0 x i8], align 1
@__ksymtab_of_platform_depopulate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_platform_depopulate to i32), ptr @__kstrtab_of_platform_depopulate, ptr @__kstrtabns_of_platform_depopulate }, section "___ksymtab_gpl+of_platform_depopulate", align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"devm_of_platform_populate_release\00", align 1
@__kstrtab_devm_of_platform_populate = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_platform_populate = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_platform_populate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_platform_populate to i32), ptr @__kstrtab_devm_of_platform_populate, ptr @__kstrtabns_devm_of_platform_populate }, section "___ksymtab_gpl+devm_of_platform_populate", align 4
@__kstrtab_devm_of_platform_depopulate = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_platform_depopulate = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_platform_depopulate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_platform_depopulate to i32), ptr @__kstrtab_devm_of_platform_depopulate, ptr @__kstrtabns_devm_of_platform_depopulate }, section "___ksymtab_gpl+devm_of_platform_depopulate", align 4
@platform_of_notifier = internal global %struct.notifier_block { ptr @of_platform_notify, ptr null, i32 0 }, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"%llx.%x.%pOFn:%s\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%llx.%x.%pOFn\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%llx.%pOFn:%s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%llx.%pOFn\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@of_skipped_node_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"operating-points-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"arm,primecell\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"arm,primecell-periphid\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"\013OF: amba: of_address_to_resource() failed (%d) for %pOF\0A\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.16 = private unnamed_addr constant [46 x i8] c"\013OF: amba_device_add() failed (%d) for %pOF\0A\00", align 1
@reserved_mem_matches = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rmtfs-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,cmd-db\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,smem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ramoops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvmem-rmem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"/firmware\00", align 1
@of_chosen = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"simple-framebuffer\00", align 1
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = private unnamed_addr constant [39 x i8] c"\013OF: %s: failed to create for '%pOF'\0A\00", align 1
@__func__.of_platform_notify = private unnamed_addr constant [19 x i8] c"of_platform_notify\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__initcall__kmod_platform__249_552_of_platform_default_populate_init3s, ptr @__initcall__kmod_platform__250_559_of_platform_sync_state_init7s, ptr @__ksymtab_devm_of_platform_depopulate, ptr @__ksymtab_devm_of_platform_populate, ptr @__ksymtab_of_device_alloc, ptr @__ksymtab_of_find_device_by_node, ptr @__ksymtab_of_platform_bus_probe, ptr @__ksymtab_of_platform_default_populate, ptr @__ksymtab_of_platform_depopulate, ptr @__ksymtab_of_platform_device_create, ptr @__ksymtab_of_platform_device_destroy, ptr @__ksymtab_of_platform_populate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_find_device_by_node(ptr noundef %0) #0 {
  %2 = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_of_node) #9
  %3 = icmp eq ptr %2, null
  %4 = getelementptr i8, ptr %2, i32 -16
  %5 = select i1 %3, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_device_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef -1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %55, label %7

7:                                                ; preds = %7, %3
  %8 = phi i32 [ %11, %7 ], [ 0, %3 ]
  %9 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %4) #9
  %10 = icmp eq i32 %9, 0
  %11 = add i32 %8, 1
  br i1 %10, label %7, label %12

12:                                               ; preds = %7
  %13 = call i32 @of_irq_count(ptr noundef %0) #9
  %14 = or i32 %13, %8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = add i32 %13, %8
  %18 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 32) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %24, label %20, !prof !9

20:                                               ; preds = %16
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  call void @platform_device_put(ptr noundef nonnull %5) #9
  br label %55

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 6
  store i32 %17, ptr %26, align 4
  %27 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 7
  store ptr %22, ptr %27, align 8
  %28 = icmp sgt i32 %8, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %35, %25
  %30 = phi ptr [ %37, %35 ], [ %22, %25 ]
  %31 = phi i32 [ %36, %35 ], [ 0, %25 ]
  %32 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef %31, ptr noundef %30) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 141, i32 noundef 9, ptr noundef null) #9
  br label %35

35:                                               ; preds = %34, %29
  %36 = add nuw nsw i32 %31, 1
  %37 = getelementptr %struct.resource, ptr %30, i32 1
  %38 = icmp eq i32 %36, %8
  br i1 %38, label %39, label %29

39:                                               ; preds = %35, %25
  %40 = phi ptr [ %22, %25 ], [ %37, %35 ]
  %41 = call i32 @of_irq_to_resource_table(ptr noundef %0, ptr noundef %40, i32 noundef %13) #9
  br label %42

42:                                               ; preds = %39, %12
  %43 = call ptr @of_node_get(ptr noundef %0) #9
  %44 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %45 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 25
  store ptr %43, ptr %45, align 8
  %46 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %47 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 26
  store ptr %46, ptr %47, align 4
  %48 = icmp eq ptr %2, null
  %49 = select i1 %48, ptr @platform_bus, ptr %2
  %50 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 1
  store ptr %49, ptr %50, align 4
  %51 = icmp eq ptr %1, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %42
  %53 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %44, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #9
  br label %55

54:                                               ; preds = %42
  call fastcc void @of_device_make_bus_id(ptr noundef %44)
  br label %55

55:                                               ; preds = %54, %52, %24, %3
  %56 = phi ptr [ null, %24 ], [ null, %3 ], [ %5, %54 ], [ %5, %52 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  ret ptr %56
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @of_device_make_bus_id(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %72, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %65, %8
  %11 = phi ptr [ %5, %8 ], [ %69, %65 ]
  %12 = phi ptr [ %4, %8 ], [ %68, %65 ]
  %13 = tail call ptr @of_get_property(ptr noundef %12, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %10
  %16 = tail call i64 @of_translate_address(ptr noundef %12, ptr noundef nonnull %13) #9
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %48, label %18

18:                                               ; preds = %15
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %20 = icmp sgt i32 %19, -1
  %21 = load ptr, ptr %9, align 4
  %22 = icmp eq ptr %21, null
  br i1 %20, label %23, label %39

23:                                               ; preds = %18
  br i1 %22, label %24, label %26

24:                                               ; preds = %23
  %25 = load ptr, ptr %0, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi ptr [ %25, %24 ], [ %21, %23 ]
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.8, ptr @.str.7
  %30 = load i32, ptr %2, align 4
  %31 = call i32 @llvm.cttz.i32(i32 %30, i1 true), !range !11
  %32 = icmp eq i32 %30, 0
  %33 = select i1 %32, i32 -1, i32 %31
  br i1 %22, label %34, label %36

34:                                               ; preds = %26
  %35 = load ptr, ptr %0, align 4
  br label %36

36:                                               ; preds = %34, %26
  %37 = phi ptr [ %35, %34 ], [ %21, %26 ]
  %38 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull %29, i64 noundef %16, i32 noundef %33, ptr noundef %12, ptr noundef %37) #9
  br label %72

39:                                               ; preds = %18
  br i1 %22, label %40, label %44

40:                                               ; preds = %39
  %41 = load ptr, ptr %0, align 4
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr @.str.10, ptr @.str.9
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi ptr [ %43, %40 ], [ @.str.9, %39 ]
  %46 = phi ptr [ %41, %40 ], [ %21, %39 ]
  %47 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull %45, i64 noundef %16, ptr noundef %12, ptr noundef %46) #9
  br label %72

48:                                               ; preds = %15, %10
  %49 = load ptr, ptr %9, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 4
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi ptr [ %52, %51 ], [ %49, %48 ]
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, ptr @.str.2, ptr @.str.11
  %57 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = tail call ptr @strrchr(ptr noundef %58, i32 noundef 47) #9
  %60 = icmp eq ptr %59, null
  %61 = getelementptr i8, ptr %59, i32 1
  %62 = select i1 %60, ptr %58, ptr %61
  br i1 %50, label %63, label %65

63:                                               ; preds = %53
  %64 = load ptr, ptr %0, align 4
  br label %65

65:                                               ; preds = %63, %53
  %66 = phi ptr [ %64, %63 ], [ %49, %53 ]
  %67 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull %56, ptr noundef %62, ptr noundef %66) #9
  %68 = load ptr, ptr %11, align 4
  %69 = getelementptr inbounds %struct.device_node, ptr %68, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %10

72:                                               ; preds = %65, %44, %36, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_platform_device_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @of_platform_device_create_pdata(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_platform_device_create_pdata(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call zeroext i1 @of_device_is_available(ptr noundef %0) #9
  br i1 %5, label %6, label %29

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  %8 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = tail call ptr @of_device_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %3)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %15 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 17
  store i64 4294967295, ptr %15, align 8
  %16 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store ptr %15, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 5
  store ptr @platform_bus_type, ptr %21, align 4
  %22 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 7
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 25
  %24 = load ptr, ptr %23, align 8
  tail call void @of_msi_configure(ptr noundef %14, ptr noundef %24) #9
  %25 = tail call i32 @of_device_add(ptr noundef nonnull %11) #9
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  tail call void @platform_device_put(ptr noundef nonnull %11) #9
  br label %28

28:                                               ; preds = %27, %10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %7) #9
  br label %29

29:                                               ; preds = %28, %20, %6, %4
  %30 = phi ptr [ null, %28 ], [ null, %6 ], [ null, %4 ], [ %11, %20 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_platform_bus_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @of_node_get(ptr noundef nonnull %0) #9
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.3, ptr noundef null) #9
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @of_match_node(ptr noundef %1, ptr noundef nonnull %10) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @of_platform_bus_create(ptr noundef nonnull %10, ptr noundef %1, ptr noundef null, ptr noundef %2, i1 noundef zeroext false)
  br label %27

16:                                               ; preds = %12
  %17 = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef null) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %25, %24 ], [ %17, %16 ]
  %21 = tail call ptr @of_match_node(ptr noundef %1, ptr noundef nonnull %20) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @of_platform_bus_create(ptr noundef nonnull %20, ptr noundef %1, ptr noundef null, ptr noundef %2, i1 noundef zeroext false)
  br label %24

24:                                               ; preds = %23, %19
  %25 = tail call ptr @of_get_next_child(ptr noundef nonnull %10, ptr noundef nonnull %20) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %24, %16, %15
  tail call void @of_node_put(ptr noundef nonnull %10) #9
  br label %28

28:                                               ; preds = %27, %9
  %29 = phi i32 [ 0, %27 ], [ -22, %9 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @of_platform_bus_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.resource, align 4
  br i1 %4, label %7, label %10

7:                                                ; preds = %5
  %8 = tail call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef null) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %138, label %10

10:                                               ; preds = %7, %5
  %11 = tail call ptr @of_match_node(ptr noundef nonnull @of_skipped_node_table, ptr noundef %0) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %138, !prof !10

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %138

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #9, !annotation !8
  %19 = icmp eq ptr %2, null
  br i1 %19, label %65, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %2, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %65, label %23

23:                                               ; preds = %38, %20
  %24 = phi ptr [ %41, %38 ], [ %21, %20 ]
  %25 = phi ptr [ %40, %38 ], [ %2, %20 ]
  %26 = phi i32 [ %39, %38 ], [ 0, %20 ]
  %27 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull %24) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %6) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = add i32 %26, 1
  %34 = load i32, ptr %6, align 4
  %35 = getelementptr inbounds %struct.of_dev_auxdata, ptr %25, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %66, label %38

38:                                               ; preds = %32, %23
  %39 = phi i32 [ %33, %32 ], [ %26, %23 ]
  %40 = getelementptr %struct.of_dev_auxdata, ptr %25, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %23

43:                                               ; preds = %38
  %44 = icmp eq i32 %39, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %2, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %61, %45
  %49 = phi ptr [ %63, %61 ], [ %46, %45 ]
  %50 = phi ptr [ %62, %61 ], [ %2, %45 ]
  %51 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull %49) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.of_dev_auxdata, ptr %50, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.of_dev_auxdata, ptr %50, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57, %53, %48
  %62 = getelementptr %struct.of_dev_auxdata, ptr %50, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %48

65:                                               ; preds = %61, %45, %43, %20, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  br label %74

66:                                               ; preds = %57, %32, %29
  %67 = phi ptr [ %50, %57 ], [ %25, %32 ], [ %25, %29 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.of_dev_auxdata, ptr %67, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.of_dev_auxdata, ptr %67, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %69, %66, %65
  %75 = phi ptr [ %71, %69 ], [ null, %66 ], [ null, %65 ]
  %76 = phi ptr [ %73, %69 ], [ null, %66 ], [ null, %65 ]
  %77 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %122, label %79

79:                                               ; preds = %74
  %80 = call zeroext i1 @of_device_is_available(ptr noundef %0) #9
  br i1 %80, label %81, label %138

81:                                               ; preds = %79
  %82 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %14) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %138

84:                                               ; preds = %81
  %85 = call ptr @amba_device_alloc(ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %121, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 17
  store i64 4294967295, ptr %88, align 8
  %89 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 16
  store ptr %88, ptr %89, align 4
  %90 = call ptr @of_node_get(ptr noundef %0) #9
  %91 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 25
  store ptr %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 3
  %93 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 26
  store ptr %92, ptr %93, align 4
  %94 = icmp eq ptr %3, null
  %95 = select i1 %94, ptr @platform_bus, ptr %3
  %96 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 1
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 7
  store ptr %76, ptr %97, align 4
  %98 = icmp eq ptr %75, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %87
  %100 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %85, ptr noundef nonnull @.str.2, ptr noundef nonnull %75) #9
  br label %102

101:                                              ; preds = %87
  call fastcc void @of_device_make_bus_id(ptr noundef nonnull %85) #9
  br label %102

102:                                              ; preds = %101, %99
  %103 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %103, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #9
  %108 = getelementptr inbounds %struct.amba_device, ptr %85, i32 0, i32 4
  store i32 %107, ptr %108, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = getelementptr inbounds %struct.amba_device, ptr %85, i32 0, i32 1
  %111 = call i32 @of_address_to_resource(ptr noundef %0, i32 noundef 0, ptr noundef %110) #9
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %111, ptr noundef %0) #11
  br label %120

115:                                              ; preds = %109
  %116 = call i32 @amba_device_add(ptr noundef nonnull %85, ptr noundef nonnull @iomem_resource) #9
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %138, label %118

118:                                              ; preds = %115
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %116, ptr noundef %0) #11
  br label %120

120:                                              ; preds = %118, %113
  call void @amba_device_put(ptr noundef nonnull %85) #9
  br label %121

121:                                              ; preds = %120, %84
  call void @_clear_bit(i32 noundef 3, ptr noundef %14) #9
  br label %138

122:                                              ; preds = %74
  %123 = call fastcc ptr @of_platform_device_create_pdata(ptr noundef %0, ptr noundef %75, ptr noundef %76, ptr noundef %3)
  %124 = icmp eq ptr %123, null
  br i1 %124, label %138, label %125

125:                                              ; preds = %122
  %126 = call ptr @of_match_node(ptr noundef %1, ptr noundef %0) #9
  %127 = icmp eq ptr %126, null
  br i1 %127, label %138, label %128

128:                                              ; preds = %125
  %129 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.platform_device, ptr %123, i32 0, i32 3
  br label %133

133:                                              ; preds = %133, %131
  %134 = phi ptr [ %129, %131 ], [ %135, %133 ]
  call fastcc void @of_platform_bus_create(ptr noundef nonnull %134, ptr noundef %1, ptr noundef %2, ptr noundef %132, i1 noundef zeroext %4)
  %135 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %134) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %133

137:                                              ; preds = %133, %128
  call void @_set_bit(i32 noundef 4, ptr noundef %14) #9
  br label %138

138:                                              ; preds = %137, %125, %122, %121, %115, %81, %79, %13, %10, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_platform_populate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @of_node_get(ptr noundef nonnull %0) #9
  br label %10

8:                                                ; preds = %4
  %9 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.3, ptr noundef null) #9
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  tail call void @device_links_supplier_sync_state_pause() #9
  %14 = tail call ptr @of_get_next_child(ptr noundef nonnull %11, ptr noundef null) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %18, %16 ], [ %14, %13 ]
  tail call fastcc void @of_platform_bus_create(ptr noundef nonnull %17, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
  %18 = tail call ptr @of_get_next_child(ptr noundef nonnull %11, ptr noundef nonnull %17) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %13
  tail call void @device_links_supplier_sync_state_resume() #9
  %21 = getelementptr inbounds %struct.device_node, ptr %11, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %21) #9
  tail call void @of_node_put(ptr noundef nonnull %11) #9
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i32 [ 0, %20 ], [ -22, %10 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_supplier_sync_state_pause() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_supplier_sync_state_resume() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_platform_default_populate(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_platform_populate(ptr noundef %0, ptr noundef nonnull @of_default_bus_match_table, ptr noundef %1, ptr noundef %2)
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @of_platform_default_populate_init() #4 section ".init.text" {
  tail call void @device_links_supplier_sync_state_pause() #9
  %1 = load ptr, ptr @of_root, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @reserved_mem_matches, ptr noundef null) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = tail call fastcc ptr @of_platform_device_create_pdata(ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef null) #9
  %9 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %7, ptr noundef nonnull @reserved_mem_matches, ptr noundef null) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %3
  %12 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.17, ptr noundef null) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @of_platform_populate(ptr noundef nonnull %12, ptr noundef null, ptr noundef null, ptr noundef null)
  tail call void @of_node_put(ptr noundef nonnull %12) #9
  br label %16

16:                                               ; preds = %14, %11
  %17 = load ptr, ptr @of_chosen, align 4
  %18 = tail call ptr @of_get_compatible_child(ptr noundef %17, ptr noundef nonnull @.str.18) #9
  %19 = tail call fastcc ptr @of_platform_device_create_pdata(ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef null) #9
  tail call void @of_node_put(ptr noundef %18) #9
  %20 = tail call i32 @of_platform_populate(ptr noundef null, ptr noundef nonnull @of_default_bus_match_table, ptr noundef null, ptr noundef null) #9
  br label %21

21:                                               ; preds = %16, %0
  %22 = phi i32 [ 0, %16 ], [ -19, %0 ]
  ret i32 %22
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @of_platform_sync_state_init() #4 section ".init.text" {
  tail call void @device_links_supplier_sync_state_resume() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_platform_device_destroy(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device_node, ptr %4, i32 0, i32 10
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %7, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @device_for_each_child(ptr noundef %0, ptr noundef null, ptr noundef nonnull @of_platform_device_destroy) #9
  %17 = load ptr, ptr %3, align 8
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %17, %15 ], [ %4, %11 ]
  %20 = getelementptr inbounds %struct.device_node, ptr %19, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %20) #9
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.device_node, ptr %21, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, @platform_bus_type
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %27) #9
  br label %31

28:                                               ; preds = %18
  %29 = icmp eq ptr %24, @amba_bustype
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @amba_device_unregister(ptr noundef %0) #9
  br label %31

31:                                               ; preds = %30, %28, %26, %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_platform_depopulate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 10
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @device_for_each_child_reverse(ptr noundef %0, ptr noundef null, ptr noundef nonnull @of_platform_device_destroy) #9
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.device_node, ptr %12, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %13) #9
  br label %14

14:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child_reverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_of_platform_populate(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_of_platform_populate_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @of_platform_populate(ptr noundef %8, ptr noundef null, ptr noundef null, ptr noundef nonnull %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #9
  br label %13

12:                                               ; preds = %6
  store ptr %0, ptr %4, align 4
  tail call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %4) #9
  br label %13

13:                                               ; preds = %12, %11, %3, %1
  %14 = phi i32 [ -22, %1 ], [ -12, %3 ], [ 0, %12 ], [ %9, %11 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_of_platform_populate_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 10
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @device_for_each_child_reverse(ptr noundef %3, ptr noundef null, ptr noundef nonnull @of_platform_device_destroy) #9
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %15) #9
  br label %16

16:                                               ; preds = %12, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_of_platform_depopulate(ptr noundef %0) #0 {
  %2 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_of_platform_populate_release, ptr noundef nonnull @devm_of_platform_match, ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 671, i32 noundef 9, ptr noundef null) #9
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_of_platform_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 648, i32 noundef 9, ptr noundef null) #9
  br label %10

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 4
  %8 = icmp eq ptr %7, %2
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi i32 [ %9, %6 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_platform_register_reconfig_notifier() local_unnamed_addr #0 {
  %1 = tail call i32 @of_reconfig_notifier_register(ptr noundef nonnull @platform_of_notifier) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3, !prof !10

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 735, i32 noundef 9, ptr noundef null) #9
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_notifier_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_msi_configure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amba_device_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_device_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @of_platform_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @of_reconfig_get_state_change(i32 noundef %1, ptr noundef %2) #9
  switch i32 %4, label %46 [
    i32 1, label %5
    i32 2, label %32
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 10
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 10
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef %8, ptr noundef nonnull @device_match_of_node) #9
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -16
  %22 = select i1 %20, ptr null, ptr %21
  %23 = load ptr, ptr %2, align 4
  %24 = icmp eq ptr %22, null
  %25 = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  %26 = select i1 %24, ptr null, ptr %25
  %27 = tail call fastcc ptr @of_platform_device_create_pdata(ptr noundef %23, ptr noundef null, ptr noundef null, ptr noundef %26) #9
  tail call void @platform_device_put(ptr noundef %22) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %18
  %30 = load ptr, ptr %2, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.of_platform_notify, ptr noundef %30) #11
  br label %46

32:                                               ; preds = %3
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.device_node, ptr %33, i32 0, i32 10
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @bus_find_device(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef %33, ptr noundef nonnull @device_match_of_node) #9
  %40 = icmp eq ptr %39, null
  %41 = getelementptr i8, ptr %39, i32 -16
  %42 = icmp eq ptr %41, null
  %43 = or i1 %40, %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @of_platform_device_destroy(ptr noundef nonnull %39, ptr undef)
  tail call void @platform_device_put(ptr noundef nonnull %41) #9
  br label %46

46:                                               ; preds = %44, %38, %32, %29, %18, %13, %5, %3
  %47 = phi i32 [ 32791, %29 ], [ 1, %5 ], [ 1, %13 ], [ 1, %32 ], [ 1, %38 ], [ 1, %18 ], [ 1, %3 ], [ 1, %44 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reconfig_get_state_change(i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i32 0, i32 33}
