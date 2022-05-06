; ModuleID = '/llk/IR/drivers/ata/libahci_platform.c_pt.bc'
source_filename = "../drivers/ata/libahci_platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_phys\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_phys\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_phys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_clks\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_clks\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_regulators\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_regulators:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_enable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_enable_resources\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_enable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_disable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_disable_resources\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_disable_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_get_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_get_resources\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_get_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_init_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_init_host\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_init_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_suspend_host\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_resume_host\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ahci_platform_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ahci_platform_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ahci_platform_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.78, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.78 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_platform_ops = dso_local global %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, align 4
@__kstrtab_ahci_platform_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_ops to i32), ptr @__kstrtab_ahci_platform_ops, ptr @__kstrtabns_ahci_platform_ops }, section "___ksymtab_gpl+ahci_platform_ops", align 4
@__kstrtab_ahci_platform_enable_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_phys to i32), ptr @__kstrtab_ahci_platform_enable_phys, ptr @__kstrtabns_ahci_platform_enable_phys }, section "___ksymtab_gpl+ahci_platform_enable_phys", align 4
@__kstrtab_ahci_platform_disable_phys = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_phys = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_phys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_phys to i32), ptr @__kstrtab_ahci_platform_disable_phys, ptr @__kstrtabns_ahci_platform_disable_phys }, section "___ksymtab_gpl+ahci_platform_disable_phys", align 4
@__kstrtab_ahci_platform_enable_clks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_clks = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_clks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_clks to i32), ptr @__kstrtab_ahci_platform_enable_clks, ptr @__kstrtabns_ahci_platform_enable_clks }, section "___ksymtab_gpl+ahci_platform_enable_clks", align 4
@__kstrtab_ahci_platform_disable_clks = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_clks = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_clks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_clks to i32), ptr @__kstrtab_ahci_platform_disable_clks, ptr @__kstrtabns_ahci_platform_disable_clks }, section "___ksymtab_gpl+ahci_platform_disable_clks", align 4
@__kstrtab_ahci_platform_enable_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_regulators to i32), ptr @__kstrtab_ahci_platform_enable_regulators, ptr @__kstrtabns_ahci_platform_enable_regulators }, section "___ksymtab_gpl+ahci_platform_enable_regulators", align 4
@__kstrtab_ahci_platform_disable_regulators = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_regulators = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_regulators = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_regulators to i32), ptr @__kstrtab_ahci_platform_disable_regulators, ptr @__kstrtabns_ahci_platform_disable_regulators }, section "___ksymtab_gpl+ahci_platform_disable_regulators", align 4
@__kstrtab_ahci_platform_enable_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_enable_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_enable_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_enable_resources to i32), ptr @__kstrtab_ahci_platform_enable_resources, ptr @__kstrtabns_ahci_platform_enable_resources }, section "___ksymtab_gpl+ahci_platform_enable_resources", align 4
@__kstrtab_ahci_platform_disable_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_disable_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_disable_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_disable_resources to i32), ptr @__kstrtab_ahci_platform_disable_resources, ptr @__kstrtabns_ahci_platform_disable_resources }, section "___ksymtab_gpl+ahci_platform_disable_resources", align 4
@.str = private unnamed_addr constant [28 x i8] c"ahci_platform_put_resources\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ahci\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid port number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"No port enabled\0A\00", align 1
@__kstrtab_ahci_platform_get_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_get_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_get_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_get_resources to i32), ptr @__kstrtab_ahci_platform_get_resources, ptr @__kstrtabns_ahci_platform_get_resources }, section "___ksymtab_gpl+ahci_platform_get_resources", align 4
@ahci_ignore_sss = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"SSS flag set, parallel bus scan disabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"mmio %pR\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"port 0x%x\00", align 1
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to enable 64-bit DMA.\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@__kstrtab_ahci_platform_init_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_init_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_init_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_init_host to i32), ptr @__kstrtab_ahci_platform_init_host, ptr @__kstrtabns_ahci_platform_init_host }, section "___ksymtab_gpl+ahci_platform_init_host", align 4
@__kstrtab_ahci_platform_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_shutdown to i32), ptr @__kstrtab_ahci_platform_shutdown, ptr @__kstrtabns_ahci_platform_shutdown }, section "___ksymtab_gpl+ahci_platform_shutdown", align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"firmware update required for suspend/resume\0A\00", align 1
@__kstrtab_ahci_platform_suspend_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_suspend_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_suspend_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_suspend_host to i32), ptr @__kstrtab_ahci_platform_suspend_host, ptr @__kstrtabns_ahci_platform_suspend_host }, section "___ksymtab_gpl+ahci_platform_suspend_host", align 4
@__kstrtab_ahci_platform_resume_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_resume_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_resume_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_resume_host to i32), ptr @__kstrtab_ahci_platform_resume_host, ptr @__kstrtabns_ahci_platform_resume_host }, section "___ksymtab_gpl+ahci_platform_resume_host", align 4
@__kstrtab_ahci_platform_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_suspend to i32), ptr @__kstrtab_ahci_platform_suspend, ptr @__kstrtabns_ahci_platform_suspend }, section "___ksymtab_gpl+ahci_platform_suspend", align 4
@__kstrtab_ahci_platform_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ahci_platform_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ahci_platform_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ahci_platform_resume to i32), ptr @__kstrtab_ahci_platform_resume, ptr @__kstrtabns_ahci_platform_resume }, section "___ksymtab_gpl+ahci_platform_resume", align 4
@__UNIQUE_ID_description292 = internal constant [56 x i8] c"libahci_platform.description=AHCI SATA platform library\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [67 x i8] c"libahci_platform.author=Anton Vorontsov <avorontsov@ru.mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"libahci_platform.file=drivers/ata/libahci_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [29 x i8] c"libahci_platform.license=GPL\00", section ".modinfo", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"couldn't get PHY in node %pOFn: ENOSYS\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"couldn't get PHY in node %pOFn: %d\0A\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_ahci_platform_disable_clks, ptr @__ksymtab_ahci_platform_disable_phys, ptr @__ksymtab_ahci_platform_disable_regulators, ptr @__ksymtab_ahci_platform_disable_resources, ptr @__ksymtab_ahci_platform_enable_clks, ptr @__ksymtab_ahci_platform_enable_phys, ptr @__ksymtab_ahci_platform_enable_regulators, ptr @__ksymtab_ahci_platform_enable_resources, ptr @__ksymtab_ahci_platform_get_resources, ptr @__ksymtab_ahci_platform_init_host, ptr @__ksymtab_ahci_platform_ops, ptr @__ksymtab_ahci_platform_resume, ptr @__ksymtab_ahci_platform_resume_host, ptr @__ksymtab_ahci_platform_shutdown, ptr @__ksymtab_ahci_platform_suspend, ptr @__ksymtab_ahci_platform_suspend_host], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_host_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @ahci_platform_disable_resources(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_phys(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %55, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 21
  br label %7

7:                                                ; preds = %29, %5
  %8 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_init(ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %7
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr ptr, ptr %15, i32 %8
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @phy_set_mode_ext(ptr noundef %17, i32 noundef 17, i32 noundef 0) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr ptr, ptr %21, i32 %8
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @phy_power_on(ptr noundef %23) #7
  switch i32 %24, label %33 [
    i32 0, label %29
    i32 -95, label %25
  ]

25:                                               ; preds = %20
  %26 = load i32, ptr %0, align 4
  %27 = and i32 %26, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %20
  %30 = add nuw i32 %8, 1
  %31 = load i32, ptr %2, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %7, label %55

33:                                               ; preds = %25, %20, %14
  %34 = phi i32 [ %18, %14 ], [ %24, %20 ], [ %24, %25 ]
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr ptr, ptr %35, i32 %8
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @phy_exit(ptr noundef %37) #7
  br label %39

39:                                               ; preds = %33, %7
  %40 = phi i32 [ %34, %33 ], [ %12, %7 ]
  %41 = add i32 %8, -1
  %42 = icmp sgt i32 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %43, %39
  %44 = phi i32 [ %53, %43 ], [ %41, %39 ]
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr ptr, ptr %45, i32 %44
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @phy_power_off(ptr noundef %47) #7
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr ptr, ptr %49, i32 %44
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @phy_exit(ptr noundef %51) #7
  %53 = add nsw i32 %44, -1
  %54 = icmp sgt i32 %44, 0
  br i1 %54, label %43, label %55

55:                                               ; preds = %43, %39, %29, %1
  %56 = phi i32 [ %40, %39 ], [ 0, %1 ], [ %40, %43 ], [ 0, %29 ]
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_phys(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 21
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #7
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr ptr, ptr %13, i32 %8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @phy_exit(ptr noundef %15) #7
  %17 = add nuw i32 %8, 1
  %18 = load i32, ptr %2, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %7, label %20

20:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_clks(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %77

8:                                                ; preds = %5
  %9 = tail call i32 @clk_enable(ptr noundef nonnull %3) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %15

11:                                               ; preds = %53, %43, %33, %23
  %12 = phi i32 [ 4, %53 ], [ 3, %43 ], [ 2, %33 ], [ 1, %23 ]
  %13 = phi ptr [ %48, %53 ], [ %38, %43 ], [ %28, %33 ], [ %18, %23 ]
  %14 = phi i32 [ %54, %53 ], [ %44, %43 ], [ %34, %33 ], [ %24, %23 ]
  tail call void @clk_unprepare(ptr noundef nonnull %13) #7
  br label %56

15:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %77

16:                                               ; preds = %8
  %17 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %77, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @clk_prepare(ptr noundef nonnull %18) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = tail call i32 @clk_enable(ptr noundef nonnull %18) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %11

26:                                               ; preds = %23
  %27 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %77, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @clk_prepare(ptr noundef nonnull %28) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = tail call i32 @clk_enable(ptr noundef nonnull %28) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %11

36:                                               ; preds = %33
  %37 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %77, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @clk_prepare(ptr noundef nonnull %38) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = tail call i32 @clk_enable(ptr noundef nonnull %38) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %11

46:                                               ; preds = %43
  %47 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %77, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @clk_prepare(ptr noundef nonnull %48) #7
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = tail call i32 @clk_enable(ptr noundef nonnull %48) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %77, label %11

56:                                               ; preds = %50, %40, %30, %20, %11
  %57 = phi i32 [ %14, %11 ], [ %51, %50 ], [ %41, %40 ], [ %31, %30 ], [ %21, %20 ]
  %58 = phi i32 [ %12, %11 ], [ 4, %50 ], [ 3, %40 ], [ 2, %30 ], [ 1, %20 ]
  %59 = add nsw i32 %58, -1
  %60 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 %59
  %61 = load ptr, ptr %60, align 4
  tail call void @clk_disable(ptr noundef %61) #7
  tail call void @clk_unprepare(ptr noundef %61) #7
  %62 = icmp ugt i32 %58, 1
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = add nsw i32 %58, -2
  %65 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 %64
  %66 = load ptr, ptr %65, align 4
  tail call void @clk_disable(ptr noundef %66) #7
  tail call void @clk_unprepare(ptr noundef %66) #7
  %67 = icmp ugt i32 %59, 1
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = add nsw i32 %58, -3
  %70 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 %69
  %71 = load ptr, ptr %70, align 4
  tail call void @clk_disable(ptr noundef %71) #7
  tail call void @clk_unprepare(ptr noundef %71) #7
  %72 = icmp ugt i32 %64, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = add nsw i32 %58, -4
  %75 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 %74
  %76 = load ptr, ptr %75, align 4
  tail call void @clk_disable(ptr noundef %76) #7
  tail call void @clk_unprepare(ptr noundef %76) #7
  br label %77

77:                                               ; preds = %73, %68, %63, %56, %53, %46, %36, %26, %16, %15, %5, %1
  %78 = phi i32 [ %9, %15 ], [ 0, %53 ], [ 0, %46 ], [ 0, %36 ], [ 0, %26 ], [ 0, %16 ], [ 0, %1 ], [ %6, %5 ], [ %57, %73 ], [ %57, %68 ], [ %57, %63 ], [ %57, %56 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_clks(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %3) #7
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @clk_disable(ptr noundef nonnull %8) #7
  tail call void @clk_unprepare(ptr noundef nonnull %8) #7
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @clk_disable(ptr noundef nonnull %13) #7
  tail call void @clk_unprepare(ptr noundef nonnull %13) #7
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @clk_disable(ptr noundef nonnull %18) #7
  tail call void @clk_unprepare(ptr noundef nonnull %18) #7
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr %struct.ahci_host_priv, ptr %0, i32 0, i32 16, i32 0
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @clk_disable(ptr noundef nonnull %23) #7
  tail call void @clk_unprepare(ptr noundef nonnull %23) #7
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_regulators(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regulator_enable(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 20
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regulator_enable(ptr noundef %8) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %54, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 18
  br label %17

17:                                               ; preds = %32, %15
  %18 = phi i32 [ %13, %15 ], [ %33, %32 ]
  %19 = phi i32 [ 0, %15 ], [ %34, %32 ]
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = tail call i32 @regulator_enable(ptr noundef nonnull %22) #7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, ptr %12, align 4
  br label %32

29:                                               ; preds = %24
  %30 = add i32 %19, -1
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %36, label %47

32:                                               ; preds = %27, %17
  %33 = phi i32 [ %28, %27 ], [ %18, %17 ]
  %34 = add nuw i32 %19, 1
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %17, label %54

36:                                               ; preds = %44, %29
  %37 = phi i32 [ %45, %44 ], [ %30, %29 ]
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr ptr, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = tail call i32 @regulator_disable(ptr noundef nonnull %40) #7
  br label %44

44:                                               ; preds = %42, %36
  %45 = add i32 %37, -1
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %36, label %47

47:                                               ; preds = %44, %29
  %48 = load ptr, ptr %7, align 4
  %49 = tail call i32 @regulator_disable(ptr noundef %48) #7
  br label %50

50:                                               ; preds = %47, %6
  %51 = phi i32 [ %9, %6 ], [ %25, %47 ]
  %52 = load ptr, ptr %2, align 4
  %53 = tail call i32 @regulator_disable(ptr noundef %52) #7
  br label %54

54:                                               ; preds = %50, %32, %11, %1
  %55 = phi i32 [ %51, %50 ], [ %4, %1 ], [ 0, %11 ], [ 0, %32 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_regulators(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 18
  br label %7

7:                                                ; preds = %17, %5
  %8 = phi i32 [ %3, %5 ], [ %18, %17 ]
  %9 = phi i32 [ 0, %5 ], [ %19, %17 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @regulator_disable(ptr noundef nonnull %12) #7
  %16 = load i32, ptr %2, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %8, %7 ], [ %16, %14 ]
  %19 = add nuw i32 %9, 1
  %20 = icmp ult i32 %19, %18
  br i1 %20, label %7, label %21

21:                                               ; preds = %17, %1
  %22 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regulator_disable(ptr noundef %23) #7
  %25 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 20
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @regulator_disable(ptr noundef %26) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_enable_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @ahci_platform_enable_regulators(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %48

4:                                                ; preds = %1
  %5 = tail call i32 @ahci_platform_enable_clks(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @reset_control_deassert(ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = tail call i32 @ahci_platform_enable_phys(ptr noundef %0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %8, align 4
  %17 = tail call i32 @reset_control_assert(ptr noundef %16) #7
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ %10, %7 ], [ %13, %15 ]
  tail call void @ahci_platform_disable_clks(ptr noundef %0)
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi i32 [ %5, %4 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 22
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 18
  br label %27

27:                                               ; preds = %37, %25
  %28 = phi i32 [ %23, %25 ], [ %38, %37 ]
  %29 = phi i32 [ 0, %25 ], [ %39, %37 ]
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr ptr, ptr %30, i32 %29
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @regulator_disable(ptr noundef nonnull %32) #7
  %36 = load i32, ptr %22, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %28, %27 ], [ %36, %34 ]
  %39 = add nuw i32 %29, 1
  %40 = icmp ult i32 %39, %38
  br i1 %40, label %27, label %41

41:                                               ; preds = %37, %20
  %42 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 19
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @regulator_disable(ptr noundef %43) #7
  %45 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 20
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @regulator_disable(ptr noundef %46) #7
  br label %48

48:                                               ; preds = %41, %12, %1
  %49 = phi i32 [ %21, %41 ], [ %2, %1 ], [ 0, %12 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_platform_disable_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 22
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 21
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @phy_power_off(ptr noundef %11) #7
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr ptr, ptr %13, i32 %8
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @phy_exit(ptr noundef %15) #7
  %17 = add nuw i32 %8, 1
  %18 = load i32, ptr %2, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %7, label %20

20:                                               ; preds = %7, %1
  %21 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @reset_control_assert(ptr noundef %22) #7
  tail call void @ahci_platform_disable_clks(ptr noundef %0)
  %24 = load i32, ptr %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 18
  br label %28

28:                                               ; preds = %38, %26
  %29 = phi i32 [ %24, %26 ], [ %39, %38 ]
  %30 = phi i32 [ 0, %26 ], [ %40, %38 ]
  %31 = load ptr, ptr %27, align 4
  %32 = getelementptr ptr, ptr %31, i32 %30
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @regulator_disable(ptr noundef nonnull %33) #7
  %37 = load i32, ptr %2, align 4
  br label %38

38:                                               ; preds = %35, %28
  %39 = phi i32 [ %29, %28 ], [ %37, %35 ]
  %40 = add nuw i32 %30, 1
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %28, label %42

42:                                               ; preds = %38, %20
  %43 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @regulator_disable(ptr noundef %44) #7
  %46 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 20
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @regulator_disable(ptr noundef %47) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ahci_platform_get_resources(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devres_open_group(ptr noundef %4, ptr noundef null, i32 noundef 3264) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %175, label %7

7:                                                ; preds = %2
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @ahci_platform_put_resources, i32 noundef 132, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %171, label %10

10:                                               ; preds = %7
  tail call void @devres_add(ptr noundef %4, ptr noundef nonnull %8) #7
  %11 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %12 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = ptrtoint ptr %12 to i32
  br label %171

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %19 = tail call ptr @clk_get(ptr noundef %4, ptr noundef null) #7
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %39, %34, %29, %24, %17
  %22 = phi ptr [ %19, %17 ], [ %27, %24 ], [ %32, %29 ], [ %37, %34 ], [ %42, %39 ]
  %23 = icmp eq ptr %22, inttoptr (i32 -517 to ptr)
  br i1 %23, label %171, label %46

24:                                               ; preds = %17
  %25 = getelementptr %struct.ahci_host_priv, ptr %8, i32 0, i32 16, i32 0
  store ptr %19, ptr %25, align 4
  %26 = load ptr, ptr %18, align 8
  %27 = tail call ptr @of_clk_get(ptr noundef %26, i32 noundef 1) #7
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %21, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.ahci_host_priv, ptr %8, i32 0, i32 16, i32 1
  store ptr %27, ptr %30, align 4
  %31 = load ptr, ptr %18, align 8
  %32 = tail call ptr @of_clk_get(ptr noundef %31, i32 noundef 2) #7
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %21, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.ahci_host_priv, ptr %8, i32 0, i32 16, i32 2
  store ptr %32, ptr %35, align 4
  %36 = load ptr, ptr %18, align 8
  %37 = tail call ptr @of_clk_get(ptr noundef %36, i32 noundef 3) #7
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %21, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.ahci_host_priv, ptr %8, i32 0, i32 16, i32 3
  store ptr %37, ptr %40, align 4
  %41 = load ptr, ptr %18, align 8
  %42 = tail call ptr @of_clk_get(ptr noundef %41, i32 noundef 4) #7
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %21, label %44

44:                                               ; preds = %39
  %45 = getelementptr %struct.ahci_host_priv, ptr %8, i32 0, i32 16, i32 4
  store ptr %42, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %21
  %47 = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.1) #7
  %48 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 19
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = ptrtoint ptr %47 to i32
  br label %171

52:                                               ; preds = %46
  %53 = tail call ptr @devm_regulator_get(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  %54 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 20
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = ptrtoint ptr %53 to i32
  br label %171

58:                                               ; preds = %52
  %59 = and i32 %1, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = tail call ptr @devm_reset_control_array_get(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %63 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 17
  store ptr %62, ptr %63, align 4
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = ptrtoint ptr %62 to i32
  br label %171

67:                                               ; preds = %61, %58
  %68 = load ptr, ptr %18, align 8
  %69 = tail call ptr @of_get_next_child(ptr noundef %68, ptr noundef null) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %71, %67
  %72 = phi i32 [ %74, %71 ], [ 0, %67 ]
  %73 = phi ptr [ %75, %71 ], [ %69, %67 ]
  %74 = add i32 %72, 1
  %75 = tail call ptr @of_get_next_child(ptr noundef %68, ptr noundef nonnull %73) #7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %71

77:                                               ; preds = %71, %67
  %78 = phi i32 [ 0, %67 ], [ %74, %71 ]
  %79 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 22
  %80 = icmp eq i32 %78, 0
  %81 = select i1 %80, i32 1, i32 %78
  store i32 %81, ptr %79, align 4
  %82 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %81, i32 4) #7
  %83 = extractvalue { i32, i1 } %82, 1
  br i1 %83, label %84, label %86, !prof !8

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 21
  store ptr null, ptr %85, align 4
  br label %171

86:                                               ; preds = %77
  %87 = extractvalue { i32, i1 } %82, 0
  %88 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %87, i32 noundef 3520) #7
  %89 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 21
  store ptr %88, ptr %89, align 4
  %90 = icmp eq ptr %88, null
  br i1 %90, label %171, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %79, align 4
  %93 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %92, i32 4) #7
  %94 = extractvalue { i32, i1 } %93, 1
  br i1 %94, label %95, label %97, !prof !8

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 18
  store ptr null, ptr %96, align 4
  br label %171

97:                                               ; preds = %91
  %98 = extractvalue { i32, i1 } %93, 0
  %99 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %98, i32 noundef 3520) #8
  %100 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 18
  store ptr %99, ptr %100, align 4
  %101 = icmp eq ptr %99, null
  br i1 %101, label %171, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %18, align 8
  br i1 %80, label %158, label %104

104:                                              ; preds = %102
  %105 = tail call ptr @of_get_next_child(ptr noundef %103, ptr noundef null) #7
  %106 = icmp eq ptr %105, null
  br i1 %106, label %152, label %107

107:                                              ; preds = %144, %104
  %108 = phi i32 [ %146, %144 ], [ 0, %104 ]
  %109 = phi i32 [ %145, %144 ], [ 0, %104 ]
  %110 = phi ptr [ %148, %144 ], [ %105, %104 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !9
  %111 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %110) #7
  br i1 %111, label %112, label %144

112:                                              ; preds = %107
  %113 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %110, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %142

115:                                              ; preds = %112
  %116 = load i32, ptr %3, align 4
  %117 = load i32, ptr %79, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %116) #9
  br label %144

120:                                              ; preds = %115
  %121 = shl nuw i32 1, %116
  %122 = or i32 %121, %108
  %123 = call ptr @of_platform_device_create(ptr noundef nonnull %110, ptr noundef null, ptr noundef null) #7
  %124 = call ptr @of_find_device_by_node(ptr noundef nonnull %110) #7
  %125 = icmp eq ptr %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %120
  %127 = load i32, ptr %3, align 4
  %128 = getelementptr inbounds %struct.platform_device, ptr %124, i32 0, i32 3
  %129 = call ptr @regulator_get(ptr noundef %128, ptr noundef nonnull @.str.12) #7
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = load ptr, ptr %100, align 4
  %133 = getelementptr ptr, ptr %132, i32 %127
  store ptr %129, ptr %133, align 4
  br label %136

134:                                              ; preds = %126
  %135 = icmp eq ptr %129, inttoptr (i32 -517 to ptr)
  br i1 %135, label %142, label %136

136:                                              ; preds = %134, %131, %120
  %137 = load i32, ptr %3, align 4
  %138 = call fastcc i32 @ahci_platform_get_phy(ptr noundef nonnull %8, i32 noundef %137, ptr noundef %4, ptr noundef nonnull %110)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = add i32 %109, 1
  br label %144

142:                                              ; preds = %136, %134, %112
  %143 = phi i32 [ -22, %112 ], [ -517, %134 ], [ %138, %136 ]
  call void @of_node_put(ptr noundef nonnull %110) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %171

144:                                              ; preds = %140, %119, %107
  %145 = phi i32 [ %109, %107 ], [ %141, %140 ], [ %109, %119 ]
  %146 = phi i32 [ %108, %107 ], [ %122, %140 ], [ %108, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %147 = load ptr, ptr %18, align 8
  %148 = call ptr @of_get_next_child(ptr noundef %147, ptr noundef nonnull %110) #7
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %107

150:                                              ; preds = %144
  %151 = icmp eq i32 %145, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %150, %104
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.5) #9
  br label %171

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  store i32 %146, ptr %154, align 4
  br label %168

158:                                              ; preds = %102
  %159 = tail call fastcc i32 @ahci_platform_get_phy(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %4, ptr noundef %103)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = tail call ptr @regulator_get(ptr noundef %4, ptr noundef nonnull @.str.12) #7
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %100, align 4
  store ptr %162, ptr %165, align 4
  br label %168

166:                                              ; preds = %161
  %167 = icmp eq ptr %162, inttoptr (i32 -517 to ptr)
  br i1 %167, label %171, label %168

168:                                              ; preds = %166, %164, %157, %153
  call void @pm_runtime_enable(ptr noundef %4) #7
  %169 = call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #7
  %170 = getelementptr inbounds %struct.ahci_host_priv, ptr %8, i32 0, i32 15
  store i8 1, ptr %170, align 4
  call void @devres_remove_group(ptr noundef %4, ptr noundef null) #7
  br label %175

171:                                              ; preds = %166, %158, %152, %142, %97, %95, %86, %84, %65, %56, %50, %21, %15, %7
  %172 = phi i32 [ %16, %15 ], [ -517, %21 ], [ %51, %50 ], [ %57, %56 ], [ %66, %65 ], [ %143, %142 ], [ -19, %152 ], [ %159, %158 ], [ -517, %166 ], [ -12, %7 ], [ -12, %86 ], [ -12, %97 ], [ -12, %84 ], [ -12, %95 ]
  %173 = call i32 @devres_release_group(ptr noundef %4, ptr noundef null) #7
  %174 = inttoptr i32 %172 to ptr
  br label %175

175:                                              ; preds = %171, %168, %2
  %176 = phi ptr [ %174, %171 ], [ %8, %168 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %176
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ahci_platform_put_resources(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 15
  %4 = load i8, ptr %3, align 4, !range !10
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #7
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr %struct.ahci_host_priv, ptr %1, i32 0, i32 16, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  tail call void @clk_put(ptr noundef nonnull %10) #7
  %13 = getelementptr %struct.ahci_host_priv, ptr %1, i32 0, i32 16, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  tail call void @clk_put(ptr noundef nonnull %14) #7
  %17 = getelementptr %struct.ahci_host_priv, ptr %1, i32 0, i32 16, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  tail call void @clk_put(ptr noundef nonnull %18) #7
  %21 = getelementptr %struct.ahci_host_priv, ptr %1, i32 0, i32 16, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  tail call void @clk_put(ptr noundef nonnull %22) #7
  %25 = getelementptr %struct.ahci_host_priv, ptr %1, i32 0, i32 16, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @clk_put(ptr noundef nonnull %26) #7
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %12, %8
  %30 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 22
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 18
  br label %35

35:                                               ; preds = %46, %33
  %36 = phi i32 [ %31, %33 ], [ %47, %46 ]
  %37 = phi i32 [ 0, %33 ], [ %48, %46 ]
  %38 = load ptr, ptr %34, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr ptr, ptr %38, i32 %37
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  tail call void @regulator_put(ptr noundef nonnull %42) #7
  %45 = load i32, ptr %30, align 4
  br label %46

46:                                               ; preds = %44, %40, %35
  %47 = phi i32 [ %36, %35 ], [ %36, %40 ], [ %45, %44 ]
  %48 = add nuw i32 %37, 1
  %49 = icmp ult i32 %48, %47
  br i1 %49, label %35, label %50

50:                                               ; preds = %46, %29
  %51 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 18
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ahci_platform_get_phy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @devm_of_phy_get(ptr noundef %2, ptr noundef %3, ptr noundef null) #7
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 %1
  store ptr %5, ptr %8, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr ptr, ptr %9, i32 %1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = ptrtoint ptr %11 to i32
  switch i32 %14, label %24 [
    i32 -38, label %15
    i32 -19, label %21
    i32 -517, label %25
  ]

15:                                               ; preds = %13
  %16 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 4
  br label %21

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef %3) #9
  br label %25

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %19, %18 ], [ %9, %13 ]
  %23 = getelementptr ptr, ptr %22, i32 %1
  store ptr null, ptr %23, align 4
  br label %25

24:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef %3, i32 noundef %14) #9
  br label %25

25:                                               ; preds = %24, %21, %20, %13, %4
  %26 = phi i32 [ 0, %4 ], [ %14, %24 ], [ %14, %13 ], [ 0, %21 ], [ -38, %20 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_init_host(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.ata_port_info, align 4
  %6 = alloca [2 x ptr], align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef align 4 dereferenceable(28) %2, i32 28, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr %5, ptr %6, align 8
  %8 = getelementptr inbounds ptr, ptr %6, i32 1
  store ptr null, ptr %8, align 4
  %9 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %112, label %11

11:                                               ; preds = %4
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %112, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 24
  store i32 %9, ptr %14, align 4
  %15 = load i32, ptr %1, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.ata_port_info, ptr %5, i32 0, i32 6
  store ptr %16, ptr %17, align 4
  call void @ahci_save_initial_config(ptr noundef %7, ptr noundef %1) #7
  %18 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1073741824
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = load i32, ptr %5, align 4
  %24 = or i32 %23, 1024
  store i32 %24, ptr %5, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = and i32 %19, 131072
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 4
  %30 = or i32 %29, 524288
  store i32 %30, ptr %5, align 4
  br label %31

31:                                               ; preds = %28, %25
  call void @ahci_set_em_messages(ptr noundef %1, ptr noundef nonnull %5) #7
  %32 = load i32, ptr %18, align 4
  %33 = and i32 %32, 31
  %34 = add nuw nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = call i32 @llvm.ctlz.i32(i32 %36, i1 false) #7, !range !11
  %39 = sub nuw nsw i32 32, %38
  %40 = select i1 %37, i32 0, i32 %39
  %41 = call i32 @llvm.smax.i32(i32 %34, i32 %40)
  %42 = call ptr @ata_host_alloc_pinfo(ptr noundef %7, ptr noundef nonnull %6, i32 noundef %41) #7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %112, label %44

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.ata_host, ptr %42, i32 0, i32 5
  store ptr %1, ptr %45, align 4
  %46 = load i32, ptr %18, align 4
  %47 = and i32 %46, 134217728
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr @ahci_ignore_sss, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.ata_host, ptr %42, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 4
  store i32 %55, ptr %53, align 4
  br label %57

56:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.6) #9
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, ptr %5, align 4
  %59 = and i32 %58, 2097152
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 @ahci_reset_em(ptr noundef nonnull %42) #7
  br label %63

63:                                               ; preds = %61, %57
  %64 = getelementptr inbounds %struct.ata_host, ptr %42, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 13
  br label %69

69:                                               ; preds = %92, %67
  %70 = phi i32 [ 0, %67 ], [ %93, %92 ]
  %71 = getelementptr %struct.ata_host, ptr %42, i32 0, i32 12, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %72, ptr noundef nonnull @.str.7, ptr noundef %73) #7
  %74 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %75, 7
  %77 = add i32 %76, 256
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %72, ptr noundef nonnull @.str.8, i32 noundef %77) #7
  %78 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 2097152
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %69
  %83 = load i32, ptr %68, align 4
  %84 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 47
  store i32 %83, ptr %84, align 8
  br label %85

85:                                               ; preds = %82, %69
  %86 = load i32, ptr %35, align 4
  %87 = shl nuw i32 1, %70
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 1
  store ptr @ata_dummy_port_ops, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %85
  %93 = add nuw i32 %70, 1
  %94 = load i32, ptr %64, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %69, label %96

96:                                               ; preds = %92, %63
  %97 = load i32, ptr %18, align 4
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %107, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %101 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %100, ptr %101, align 4
  %102 = call i32 @dma_set_mask(ptr noundef %7, i64 noundef -1) #7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 @dma_set_coherent_mask(ptr noundef %7, i64 noundef -1) #7
  br label %107

106:                                              ; preds = %99
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9) #9
  br label %112

107:                                              ; preds = %104, %96
  %108 = call i32 @ahci_reset_controller(ptr noundef nonnull %42) #7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  call void @ahci_init_controller(ptr noundef nonnull %42) #7
  call void @ahci_print_info(ptr noundef nonnull %42, ptr noundef nonnull @.str.10) #7
  %111 = call i32 @ahci_host_activate(ptr noundef nonnull %42, ptr noundef %3) #7
  br label %112

112:                                              ; preds = %110, %107, %106, %31, %11, %4
  %113 = phi i32 [ %102, %106 ], [ %111, %110 ], [ %9, %4 ], [ -22, %11 ], [ -12, %31 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #7
  ret i32 %113
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_save_initial_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_set_em_messages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_em(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_init_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_print_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_host_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ahci_platform_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %28, %1
  %12 = phi i32 [ %29, %28 ], [ 0, %1 ]
  %13 = getelementptr %struct.ata_host, ptr %3, i32 0, i32 12, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_port_operations, ptr %16, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  tail call void %18(ptr noundef %14) #7
  %21 = load ptr, ptr %15, align 4
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi ptr [ %21, %20 ], [ %16, %11 ]
  %24 = getelementptr inbounds %struct.ata_port_operations, ptr %23, i32 0, i32 35
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call void %25(ptr noundef %14) #7
  br label %28

28:                                               ; preds = %27, %22
  %29 = add nuw i32 %12, 1
  %30 = load i32, ptr %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %11, label %32

32:                                               ; preds = %28, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %33 = getelementptr i8, ptr %7, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %35 = and i32 %34, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #7, !srcloc !15
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %37 = load i32, ptr %8, align 4
  %38 = sub i32 31, %37
  %39 = lshr i32 -1, %38
  %40 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #7, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_suspend_host(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11) #9
  br label %41

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !18
  %15 = and i32 %14, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %15) #7, !srcloc !15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !20
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %17, 67108864
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 21
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ 0, %24 ], [ %36, %26 ]
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr ptr, ptr %28, i32 %27
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @phy_power_off(ptr noundef %30) #7
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr ptr, ptr %32, i32 %27
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @phy_exit(ptr noundef %34) #7
  %36 = add nuw i32 %27, 1
  %37 = load i32, ptr %21, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %26, label %39

39:                                               ; preds = %26, %20, %10
  %40 = tail call i32 @ata_host_suspend(ptr noundef %3, [1 x i32] [i32 2]) #7
  br label %41

41:                                               ; preds = %39, %9
  %42 = phi i32 [ -5, %9 ], [ %40, %39 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_resume_host(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @ahci_reset_controller(ptr noundef %3) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  tail call void @ahci_init_controller(ptr noundef %3) #7
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, ptr %5, align 4
  %15 = and i32 %14, 67108864
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @ahci_platform_enable_phys(ptr noundef %5)
  br label %19

19:                                               ; preds = %17, %13
  tail call void @ata_host_resume(ptr noundef %3) #7
  br label %20

20:                                               ; preds = %19, %9
  %21 = phi i32 [ 0, %19 ], [ %10, %9 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @ahci_platform_suspend_host(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @ahci_platform_disable_resources(ptr noundef %5)
  br label %9

9:                                                ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ahci_platform_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @ahci_platform_enable_resources(ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = tail call i32 @ahci_reset_controller(ptr noundef %9) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  tail call void @ahci_init_controller(ptr noundef %9) #7
  br label %19

19:                                               ; preds = %18, %8
  %20 = load i32, ptr %11, align 4
  %21 = and i32 %20, 67108864
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @ahci_platform_enable_phys(ptr noundef %11) #7
  br label %25

25:                                               ; preds = %23, %19
  tail call void @ata_host_resume(ptr noundef %9) #7
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #7
  %26 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %0) #7
  br label %28

27:                                               ; preds = %15
  tail call void @ahci_platform_disable_resources(ptr noundef %5)
  br label %28

28:                                               ; preds = %27, %25, %1
  %29 = phi i32 [ %16, %27 ], [ 0, %25 ], [ %6, %1 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_reset_control_array_get(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i32 0, i32 33}
!12 = !{i64 2155110478}
!13 = !{i64 3545218}
!14 = !{i64 2155110958}
!15 = !{i64 3544800}
!16 = !{i64 2155111303}
!17 = !{i64 2155112564}
!18 = !{i64 2155115699}
!19 = !{i64 2155115882}
!20 = !{i64 2155116337}
