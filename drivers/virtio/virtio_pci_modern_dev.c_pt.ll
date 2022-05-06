; ModuleID = '/llk/IR/drivers/virtio/virtio_pci_modern_dev.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_modern_dev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_probe\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_remove\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_get_features:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_get_features\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_get_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_get_driver_features:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_get_driver_features\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_get_driver_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_set_features:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_set_features\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_set_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_generation:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_generation\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_generation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_get_status\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_get_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_set_status\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_queue_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_queue_vector\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_queue_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_config_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_config_vector\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_config_vector:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_queue_address:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_queue_address\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_queue_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_set_queue_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_set_queue_enable\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_set_queue_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_get_queue_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_get_queue_enable\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_get_queue_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_set_queue_size:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_set_queue_size\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_set_queue_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_get_queue_size:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_get_queue_size\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_get_queue_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_get_num_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_get_num_queues\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_get_num_queues:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vp_modern_map_vq_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22vp_modern_map_vq_notify\22\09\09\09\09\09"
module asm "__kstrtabns_vp_modern_map_vq_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.virtio_device_id }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_pci_common_cfg = type { i32, i32, i32, i32, i16, i16, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"virtio_pci: leaving for legacy driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"virtio_pci: missing capabilities %i/%i/%i\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"virtio-pci-modern\00", align 1
@__kstrtab_vp_modern_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_probe to i32), ptr @__kstrtab_vp_modern_probe, ptr @__kstrtabns_vp_modern_probe }, section "___ksymtab_gpl+vp_modern_probe", align 4
@__kstrtab_vp_modern_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_remove to i32), ptr @__kstrtab_vp_modern_remove, ptr @__kstrtabns_vp_modern_remove }, section "___ksymtab_gpl+vp_modern_remove", align 4
@__kstrtab_vp_modern_get_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_get_features = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_get_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_get_features to i32), ptr @__kstrtab_vp_modern_get_features, ptr @__kstrtabns_vp_modern_get_features }, section "___ksymtab_gpl+vp_modern_get_features", align 4
@__kstrtab_vp_modern_get_driver_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_get_driver_features = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_get_driver_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_get_driver_features to i32), ptr @__kstrtab_vp_modern_get_driver_features, ptr @__kstrtabns_vp_modern_get_driver_features }, section "___ksymtab_gpl+vp_modern_get_driver_features", align 4
@__kstrtab_vp_modern_set_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_set_features = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_set_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_set_features to i32), ptr @__kstrtab_vp_modern_set_features, ptr @__kstrtabns_vp_modern_set_features }, section "___ksymtab_gpl+vp_modern_set_features", align 4
@__kstrtab_vp_modern_generation = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_generation = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_generation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_generation to i32), ptr @__kstrtab_vp_modern_generation, ptr @__kstrtabns_vp_modern_generation }, section "___ksymtab_gpl+vp_modern_generation", align 4
@__kstrtab_vp_modern_get_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_get_status = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_get_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_get_status to i32), ptr @__kstrtab_vp_modern_get_status, ptr @__kstrtabns_vp_modern_get_status }, section "___ksymtab_gpl+vp_modern_get_status", align 4
@__kstrtab_vp_modern_set_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_set_status = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_set_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_set_status to i32), ptr @__kstrtab_vp_modern_set_status, ptr @__kstrtabns_vp_modern_set_status }, section "___ksymtab_gpl+vp_modern_set_status", align 4
@__kstrtab_vp_modern_queue_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_queue_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_queue_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_queue_vector to i32), ptr @__kstrtab_vp_modern_queue_vector, ptr @__kstrtabns_vp_modern_queue_vector }, section "___ksymtab_gpl+vp_modern_queue_vector", align 4
@__kstrtab_vp_modern_config_vector = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_config_vector = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_config_vector = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_config_vector to i32), ptr @__kstrtab_vp_modern_config_vector, ptr @__kstrtabns_vp_modern_config_vector }, section "___ksymtab_gpl+vp_modern_config_vector", align 4
@__kstrtab_vp_modern_queue_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_queue_address = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_queue_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_queue_address to i32), ptr @__kstrtab_vp_modern_queue_address, ptr @__kstrtabns_vp_modern_queue_address }, section "___ksymtab_gpl+vp_modern_queue_address", align 4
@__kstrtab_vp_modern_set_queue_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_set_queue_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_set_queue_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_set_queue_enable to i32), ptr @__kstrtab_vp_modern_set_queue_enable, ptr @__kstrtabns_vp_modern_set_queue_enable }, section "___ksymtab_gpl+vp_modern_set_queue_enable", align 4
@__kstrtab_vp_modern_get_queue_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_get_queue_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_get_queue_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_get_queue_enable to i32), ptr @__kstrtab_vp_modern_get_queue_enable, ptr @__kstrtabns_vp_modern_get_queue_enable }, section "___ksymtab_gpl+vp_modern_get_queue_enable", align 4
@__kstrtab_vp_modern_set_queue_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_set_queue_size = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_set_queue_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_set_queue_size to i32), ptr @__kstrtab_vp_modern_set_queue_size, ptr @__kstrtabns_vp_modern_set_queue_size }, section "___ksymtab_gpl+vp_modern_set_queue_size", align 4
@__kstrtab_vp_modern_get_queue_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_get_queue_size = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_get_queue_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_get_queue_size to i32), ptr @__kstrtab_vp_modern_get_queue_size, ptr @__kstrtabns_vp_modern_get_queue_size }, section "___ksymtab_gpl+vp_modern_get_queue_size", align 4
@__kstrtab_vp_modern_get_num_queues = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_get_num_queues = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_get_num_queues = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_get_num_queues to i32), ptr @__kstrtab_vp_modern_get_num_queues, ptr @__kstrtabns_vp_modern_get_num_queues }, section "___ksymtab_gpl+vp_modern_get_num_queues", align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"bad notification offset %u (x %u) for queue %u > %zd\00", align 1
@__kstrtab_vp_modern_map_vq_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_vp_modern_map_vq_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_vp_modern_map_vq_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vp_modern_map_vq_notify to i32), ptr @__kstrtab_vp_modern_map_vq_notify, ptr @__kstrtabns_vp_modern_map_vq_notify }, section "___ksymtab_gpl+vp_modern_map_vq_notify", align 4
@__UNIQUE_ID_version255 = internal constant [34 x i8] c"virtio_pci_modern_dev.version=0.1\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"virtio_pci_modern_dev\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"0.1\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.7 }, section "__modver", align 4
@__UNIQUE_ID_description256 = internal constant [59 x i8] c"virtio_pci_modern_dev.description=Modern Virtio PCI Device\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [62 x i8] c"virtio_pci_modern_dev.author=Jason Wang <jasowang@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [64 x i8] c"virtio_pci_modern_dev.file=drivers/virtio/virtio_pci_modern_dev\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [34 x i8] c"virtio_pci_modern_dev.license=GPL\00", section ".modinfo", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"virtio_pci: bad capability len %u (>%u expected)\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"virtio_pci: bad capability len %u (>=%zu expected)\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"virtio_pci: map wrap-around %u+%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"virtio_pci: offset %u not aligned to %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"virtio_pci: map virtio %zu@%u out of range on bar %i length %lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"virtio_pci: unable to map virtio %u@%u on bar %i\0A\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__UNIQUE_ID_version255, ptr @__ksymtab_vp_modern_config_vector, ptr @__ksymtab_vp_modern_generation, ptr @__ksymtab_vp_modern_get_driver_features, ptr @__ksymtab_vp_modern_get_features, ptr @__ksymtab_vp_modern_get_num_queues, ptr @__ksymtab_vp_modern_get_queue_enable, ptr @__ksymtab_vp_modern_get_queue_size, ptr @__ksymtab_vp_modern_get_status, ptr @__ksymtab_vp_modern_map_vq_notify, ptr @__ksymtab_vp_modern_probe, ptr @__ksymtab_vp_modern_queue_address, ptr @__ksymtab_vp_modern_queue_vector, ptr @__ksymtab_vp_modern_remove, ptr @__ksymtab_vp_modern_set_features, ptr @__ksymtab_vp_modern_set_queue_enable, ptr @__ksymtab_vp_modern_set_queue_size, ptr @__ksymtab_vp_modern_set_status, ptr @__modver_attr], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vp_modern_probe(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 8
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = add i16 %14, -4224
  %17 = icmp ult i16 %16, -128
  br i1 %17, label %255, label %18

18:                                               ; preds = %1
  %19 = icmp ult i16 %14, 4160
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 10
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  br label %26

24:                                               ; preds = %18
  %25 = add nsw i32 %15, -4160
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %23, %20 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 11
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 9
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 11, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 10
  %34 = tail call zeroext i8 @pci_find_capability(ptr noundef %12, i32 noundef 9) #4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %63, %26
  %37 = phi i8 [ %64, %63 ], [ %34, %26 ]
  %38 = zext i8 %37 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  %39 = add nuw nsw i32 %38, 3
  %40 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %39, ptr noundef nonnull %8) #4
  %41 = add nuw nsw i32 %38, 4
  %42 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %41, ptr noundef nonnull %9) #4
  %43 = load i8, ptr %9, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ult i8 %43, 6
  %46 = load i8, ptr %8, align 1
  %47 = icmp eq i8 %46, 1
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %63

49:                                               ; preds = %36
  %50 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %44, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %44
  %55 = load i32, ptr %54, align 8
  %56 = sub i32 %51, %55
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %44, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 768
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58, %53, %49, %36
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  %64 = call zeroext i8 @pci_find_next_capability(ptr noundef %12, i8 noundef zeroext %37, i32 noundef 9) #4
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %36

66:                                               ; preds = %63, %26
  %67 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str) #5
  br label %255

68:                                               ; preds = %58
  %69 = zext i8 %43 to i32
  %70 = shl nuw i32 1, %69
  %71 = load i32, ptr %33, align 4
  %72 = or i32 %71, %70
  store i32 %72, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  %73 = call zeroext i8 @pci_find_capability(ptr noundef %12, i32 noundef 9) #4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %110, label %75

75:                                               ; preds = %107, %68
  %76 = phi i8 [ %108, %107 ], [ %73, %68 ]
  %77 = zext i8 %76 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  %78 = add nuw nsw i32 %77, 3
  %79 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %78, ptr noundef nonnull %6) #4
  %80 = add nuw nsw i32 %77, 4
  %81 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %80, ptr noundef nonnull %7) #4
  %82 = load i8, ptr %7, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ult i8 %82, 6
  %85 = load i8, ptr %6, align 1
  %86 = icmp eq i8 %85, 3
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %107

88:                                               ; preds = %75
  %89 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %83, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %88
  %93 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %83
  %94 = load i32, ptr %93, align 8
  %95 = sub i32 %90, %94
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %83, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = and i32 %99, 768
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = zext i8 %82 to i32
  %104 = shl nuw i32 1, %103
  %105 = load i32, ptr %33, align 4
  %106 = or i32 %105, %104
  store i32 %106, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  br label %110

107:                                              ; preds = %97, %92, %88, %75
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  %108 = call zeroext i8 @pci_find_next_capability(ptr noundef %12, i8 noundef zeroext %76, i32 noundef 9) #4
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %75

110:                                              ; preds = %107, %102, %68
  %111 = phi i32 [ %77, %102 ], [ 0, %68 ], [ 0, %107 ]
  %112 = call zeroext i8 @pci_find_capability(ptr noundef %12, i32 noundef 9) #4
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %150, label %114

114:                                              ; preds = %141, %110
  %115 = phi i8 [ %142, %141 ], [ %112, %110 ]
  %116 = zext i8 %115 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #4
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  %117 = add nuw nsw i32 %116, 3
  %118 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %117, ptr noundef nonnull %4) #4
  %119 = add nuw nsw i32 %116, 4
  %120 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %119, ptr noundef nonnull %5) #4
  %121 = load i8, ptr %5, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ult i8 %121, 6
  %124 = load i8, ptr %4, align 1
  %125 = icmp eq i8 %124, 2
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %141

127:                                              ; preds = %114
  %128 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %122, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %127
  %132 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %122
  %133 = load i32, ptr %132, align 8
  %134 = sub i32 %129, %133
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %122, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 768
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136, %131, %127, %114
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %142 = call zeroext i8 @pci_find_next_capability(ptr noundef %12, i8 noundef zeroext %115, i32 noundef 9) #4
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %150, label %114

144:                                              ; preds = %136
  %145 = zext i8 %121 to i32
  %146 = shl nuw i32 1, %145
  %147 = load i32, ptr %33, align 4
  %148 = or i32 %147, %146
  store i32 %148, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #4
  %149 = icmp eq i32 %111, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144, %141, %110
  %151 = phi i32 [ %116, %144 ], [ 0, %110 ], [ 0, %141 ]
  %152 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %152, ptr noundef nonnull @.str.1, i32 noundef %38, i32 noundef %111, i32 noundef %151) #5
  br label %255

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %155 = call i32 @dma_set_mask(ptr noundef %154, i64 noundef -1) #4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 @dma_set_coherent_mask(ptr noundef %154, i64 noundef -1) #4
  br label %165

159:                                              ; preds = %153
  %160 = call i32 @dma_set_mask(ptr noundef %154, i64 noundef 4294967295) #4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = call i32 @dma_set_coherent_mask(ptr noundef %154, i64 noundef 4294967295) #4
  br label %165

164:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %154, ptr noundef nonnull @.str.2) #5
  br label %165

165:                                              ; preds = %164, %162, %157
  %166 = call zeroext i8 @pci_find_capability(ptr noundef %12, i32 noundef 9) #4
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %203, label %168

168:                                              ; preds = %200, %165
  %169 = phi i8 [ %201, %200 ], [ %166, %165 ]
  %170 = zext i8 %169 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #4
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #4
  store i8 0, ptr %3, align 1, !annotation !8
  %171 = add nuw nsw i32 %170, 3
  %172 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %171, ptr noundef nonnull %2) #4
  %173 = add nuw nsw i32 %170, 4
  %174 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %173, ptr noundef nonnull %3) #4
  %175 = load i8, ptr %3, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp ult i8 %175, 6
  %178 = load i8, ptr %2, align 1
  %179 = icmp eq i8 %178, 4
  %180 = select i1 %177, i1 %179, i1 false
  br i1 %180, label %181, label %200

181:                                              ; preds = %168
  %182 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %176, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %200, label %185

185:                                              ; preds = %181
  %186 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %176
  %187 = load i32, ptr %186, align 8
  %188 = sub i32 %183, %187
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %176, i32 3
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 768
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = zext i8 %175 to i32
  %197 = shl nuw i32 1, %196
  %198 = load i32, ptr %33, align 4
  %199 = or i32 %198, %197
  store i32 %199, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #4
  br label %203

200:                                              ; preds = %190, %185, %181, %168
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #4
  %201 = call zeroext i8 @pci_find_next_capability(ptr noundef %12, i8 noundef zeroext %169, i32 noundef 9) #4
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %168

203:                                              ; preds = %200, %195, %165
  %204 = phi i32 [ %170, %195 ], [ 0, %165 ], [ 0, %200 ]
  %205 = load i32, ptr %33, align 4
  %206 = call i32 @pci_request_selected_regions(ptr noundef %12, i32 noundef %205, ptr noundef nonnull @.str.3) #4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %255

208:                                              ; preds = %203
  %209 = call fastcc ptr @vp_modern_map_capability(ptr noundef %0, i32 noundef %38, i32 noundef 56, i32 noundef 4, i32 noundef 0, i32 noundef 56, ptr noundef null, ptr noundef null)
  %210 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  store ptr %209, ptr %210, align 4
  %211 = icmp eq ptr %209, null
  br i1 %211, label %255, label %212

212:                                              ; preds = %208
  %213 = call fastcc ptr @vp_modern_map_capability(ptr noundef %0, i32 noundef %111, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, ptr noundef null)
  %214 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 5
  store ptr %213, ptr %214, align 4
  %215 = icmp eq ptr %213, null
  br i1 %215, label %253, label %216

216:                                              ; preds = %212
  %217 = add nuw nsw i32 %116, 16
  %218 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 9
  %219 = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef %217, ptr noundef %218) #4
  %220 = add nuw nsw i32 %116, 12
  %221 = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef %220, ptr noundef nonnull %10) #4
  %222 = add nuw nsw i32 %116, 8
  %223 = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef %222, ptr noundef nonnull %11) #4
  %224 = load i32, ptr %10, align 4
  %225 = zext i32 %224 to i64
  %226 = load i32, ptr %11, align 4
  %227 = and i32 %226, 4095
  %228 = zext i32 %227 to i64
  %229 = add nuw nsw i64 %228, %225
  %230 = icmp ult i64 %229, 4097
  br i1 %230, label %231, label %237

231:                                              ; preds = %216
  %232 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 4
  %234 = call fastcc ptr @vp_modern_map_capability(ptr noundef %0, i32 noundef %116, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef %224, ptr noundef %232, ptr noundef %233)
  %235 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 3
  store ptr %234, ptr %235, align 4
  %236 = icmp eq ptr %234, null
  br i1 %236, label %251, label %239

237:                                              ; preds = %216
  %238 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 8
  store i32 %116, ptr %238, align 4
  br label %239

239:                                              ; preds = %237, %231
  %240 = icmp eq i32 %204, 0
  br i1 %240, label %255, label %241

241:                                              ; preds = %239
  %242 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 7
  %243 = call fastcc ptr @vp_modern_map_capability(ptr noundef %0, i32 noundef %204, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 4096, ptr noundef %242, ptr noundef null)
  %244 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 2
  store ptr %243, ptr %244, align 4
  %245 = icmp eq ptr %243, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %241
  %247 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 3
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  call void @pci_iounmap(ptr noundef %12, ptr noundef nonnull %248) #4
  br label %251

251:                                              ; preds = %250, %246, %231
  %252 = load ptr, ptr %214, align 4
  call void @pci_iounmap(ptr noundef %12, ptr noundef %252) #4
  br label %253

253:                                              ; preds = %251, %212
  %254 = load ptr, ptr %210, align 4
  call void @pci_iounmap(ptr noundef %12, ptr noundef %254) #4
  br label %255

255:                                              ; preds = %253, %241, %239, %208, %203, %150, %66, %1
  %256 = phi i32 [ -22, %150 ], [ -19, %66 ], [ -19, %1 ], [ %206, %203 ], [ 0, %241 ], [ 0, %239 ], [ -22, %208 ], [ -22, %253 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  ret i32 %256
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @vp_modern_map_capability(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef writeonly %6, ptr noundef writeonly %7) unnamed_addr #0 {
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #4
  store i32 0, ptr %11, align 4, !annotation !8
  %13 = add i32 %1, 4
  %14 = call i32 @pci_read_config_byte(ptr noundef %12, i32 noundef %13, ptr noundef nonnull %9) #4
  %15 = add i32 %1, 8
  %16 = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef %15, ptr noundef nonnull %10) #4
  %17 = add i32 %1, 12
  %18 = call i32 @pci_read_config_dword(ptr noundef %12, i32 noundef %17, ptr noundef nonnull %11) #4
  %19 = load i32, ptr %11, align 4
  %20 = icmp ugt i32 %19, %4
  br i1 %20, label %23, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.8, i32 noundef %19, i32 noundef %4) #5
  br label %92

23:                                               ; preds = %8
  %24 = sub i32 %19, %4
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %19, i32 noundef %2) #5
  br label %92

28:                                               ; preds = %23
  store i32 %24, ptr %11, align 4
  %29 = load i32, ptr %10, align 4
  %30 = add i32 %29, %4
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.10, i32 noundef %4, i32 noundef %29) #5
  br label %92

34:                                               ; preds = %28
  store i32 %30, ptr %10, align 4
  %35 = add i32 %3, -1
  %36 = and i32 %30, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.11, i32 noundef %30, i32 noundef %3) #5
  br label %92

40:                                               ; preds = %34
  %41 = icmp ugt i32 %24, %5
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  store i32 %5, ptr %11, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %5, %42 ], [ %24, %40 ]
  %45 = icmp eq ptr %6, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 %44, ptr %6, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = add i32 %30, %2
  %49 = icmp ult i32 %48, %2
  %50 = load i8, ptr %9, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %51, i32 1
  %53 = load i32, ptr %52, align 4
  br i1 %49, label %64, label %54

54:                                               ; preds = %47
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %51
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %53, 1
  %60 = sub i32 %59, %58
  br label %61

61:                                               ; preds = %56, %54
  %62 = phi i32 [ %60, %56 ], [ 0, %54 ]
  %63 = icmp ugt i32 %48, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %61, %47
  %65 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %66 = icmp eq i32 %53, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %51
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %53, 1
  %71 = sub i32 %70, %69
  br label %72

72:                                               ; preds = %67, %64
  %73 = phi i32 [ %71, %67 ], [ 0, %64 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.12, i32 noundef %2, i32 noundef %30, i32 noundef %51, i32 noundef %73) #5
  br label %92

74:                                               ; preds = %61
  %75 = call ptr @pci_iomap_range(ptr noundef %12, i32 noundef %51, i32 noundef %30, i32 noundef %44) #4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %79 = load i32, ptr %11, align 4
  %80 = load i32, ptr %10, align 4
  %81 = load i8, ptr %9, align 1
  %82 = zext i8 %81 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.13, i32 noundef %79, i32 noundef %80, i32 noundef %82) #5
  br label %92

83:                                               ; preds = %74
  %84 = icmp eq ptr %7, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %83
  %86 = load i8, ptr %9, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr %struct.pci_dev, ptr %12, i32 0, i32 47, i32 %87
  %89 = load i32, ptr %88, align 8
  %90 = load i32, ptr %10, align 4
  %91 = add i32 %90, %89
  store i32 %91, ptr %7, align 4
  br label %92

92:                                               ; preds = %85, %83, %77, %72, %38, %32, %26, %21
  %93 = phi ptr [ null, %21 ], [ null, %26 ], [ null, %32 ], [ null, %38 ], [ null, %72 ], [ %75, %83 ], [ %75, %85 ], [ null, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  ret ptr %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_modern_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @pci_iounmap(ptr noundef %2, ptr noundef nonnull %4) #4
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @pci_iounmap(ptr noundef %2, ptr noundef nonnull %9) #4
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @pci_iounmap(ptr noundef %2, ptr noundef %14) #4
  %15 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @pci_iounmap(ptr noundef %2, ptr noundef %16) #4
  %17 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  tail call void @pci_release_selected_regions(ptr noundef %2, i32 noundef %18) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vp_modern_get_features(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #4, !srcloc !10
  %4 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %6 = zext i32 %5 to i64
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1) #4, !srcloc !10
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = or i64 %9, %6
  ret i64 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @vp_modern_get_driver_features(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #4, !srcloc !10
  %5 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %7 = zext i32 %6 to i64
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 1) #4, !srcloc !10
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !12
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %7
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_modern_set_features(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #4, !srcloc !10
  %6 = trunc i64 %1 to i32
  %7 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %6) #4, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 1) #4, !srcloc !10
  %8 = lshr i64 %1, 32
  %9 = trunc i64 %8 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %9) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vp_modern_generation(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 7
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #4, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @vp_modern_get_status(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 6
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #4, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_modern_set_status(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %1) #4, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @vp_modern_queue_vector(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %1) #4, !srcloc !18
  %7 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 10
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %2) #4, !srcloc !18
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #4, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  ret i16 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @vp_modern_config_vector(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %1) #4, !srcloc !18
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #4, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  ret i16 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_modern_queue_address(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %1) #4, !srcloc !18
  %9 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 13
  %10 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 14
  %11 = trunc i64 %2 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #4, !srcloc !10
  %12 = lshr i64 %2, 32
  %13 = trunc i64 %12 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %13) #4, !srcloc !10
  %14 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 15
  %15 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 16
  %16 = trunc i64 %3 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #4, !srcloc !10
  %17 = lshr i64 %3, 32
  %18 = trunc i64 %17 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %18) #4, !srcloc !10
  %19 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 17
  %20 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 18
  %21 = trunc i64 %4 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #4, !srcloc !10
  %22 = lshr i64 %4, 32
  %23 = trunc i64 %22 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !9
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %23) #4, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_modern_set_queue_enable(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %1) #4, !srcloc !18
  %7 = zext i1 %2 to i16
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %8, i32 0, i32 11
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %7) #4, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @vp_modern_get_queue_enable(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %1) #4, !srcloc !18
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %6, i32 0, i32 11
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #4, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %9 = icmp ne i16 %8, 0
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vp_modern_set_queue_size(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %1) #4, !srcloc !18
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %2) #4, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @vp_modern_get_queue_size(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %4, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %1) #4, !srcloc !18
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %6, i32 0, i32 9
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #4, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  ret i16 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @vp_modern_get_num_queues(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %3, i32 0, i32 5
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %4) #4, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  ret i16 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vp_modern_map_vq_notify(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %5, i32 0, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 %1) #4, !srcloc !18
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %7, i32 0, i32 12
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #4, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  %10 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %3
  %14 = zext i16 %9 to i64
  %15 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = mul nuw nsw i64 %17, %14
  %19 = add nuw nsw i64 %18, 2
  %20 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %27 = zext i16 %9 to i32
  %28 = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.4, i32 noundef %27, i32 noundef %16, i32 noundef %28, i32 noundef %21) #5
  br label %55

29:                                               ; preds = %13
  %30 = icmp eq ptr %2, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = zext i16 %9 to i32
  br label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = zext i16 %9 to i32
  %37 = mul i32 %16, %36
  %38 = add i32 %35, %37
  store i32 %38, ptr %2, align 4
  %39 = load ptr, ptr %10, align 4
  %40 = load i32, ptr %15, align 4
  br label %41

41:                                               ; preds = %33, %31
  %42 = phi i32 [ %32, %31 ], [ %36, %33 ]
  %43 = phi i32 [ %16, %31 ], [ %40, %33 ]
  %44 = phi ptr [ %11, %31 ], [ %39, %33 ]
  %45 = mul i32 %43, %42
  %46 = getelementptr i8, ptr %44, i32 %45
  br label %55

47:                                               ; preds = %3
  %48 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = zext i16 %9 to i32
  %51 = getelementptr inbounds %struct.virtio_pci_modern_device, ptr %0, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = mul i32 %52, %50
  %54 = tail call fastcc ptr @vp_modern_map_capability(ptr noundef %0, i32 noundef %49, i32 noundef 2, i32 noundef 2, i32 noundef %53, i32 noundef 2, ptr noundef null, ptr noundef %2)
  br label %55

55:                                               ; preds = %47, %41, %24
  %56 = phi ptr [ null, %24 ], [ %46, %41 ], [ %54, %47 ]
  ret ptr %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_next_capability(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!9 = !{i64 2151377418}
!10 = !{i64 3836325}
!11 = !{i64 3836743}
!12 = !{i64 2151376196}
!13 = !{i64 3836523}
!14 = !{i64 2151375250}
!15 = !{i64 2151376548}
!16 = !{i64 3836128}
!17 = !{i64 2151376945}
!18 = !{i64 3835705}
!19 = !{i64 3835905}
!20 = !{i64 2151375723}
